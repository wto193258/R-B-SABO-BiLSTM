function syntheticSamples = smote(X, minorityClassIndices, k, oversamplingRatio)
    % 输入参数：
    % X: 数据集，每一行代表一个样本，每一列代表一个特征
    % minorityClassIndices: 少数类样本的索引
    % k: 选择的最近邻数
    % oversamplingRatio: 合成样本相对于少数类样本的比例
    
    minoritySamples = X(minorityClassIndices, :);
    numMinoritySamples = size(minoritySamples, 1);
    
    syntheticSamples = [];
    
    for i = 1:numMinoritySamples
        % 对于每个少数类样本，找到它的 k 个最近邻
        nnIndices = knnsearch(X, minoritySamples(i, :), 'K', k+1);
        nnIndices = nnIndices(2:end); % 排除自身
        
        for j = 1:oversamplingRatio
            % 随机选择一个最近邻
            nnIndex = randsample(nnIndices, 1);
            
            % 生成合成样本
            syntheticSample = minoritySamples(i, :) + rand() * (X(nnIndex, :) - minoritySamples(i, :));
            
            % 将合成样本添加到结果中
            syntheticSamples = [syntheticSamples; syntheticSample];
        end
    end
end