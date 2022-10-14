fn = 'C:\Users\info\Desktop\s3\VpO\TP1_Features & Panorama\images\ship1.pgm';
fn2 = 'C:\Users\info\Desktop\s3\VpO\TP1_Features & Panorama\images\ship2.pgm';
fn3 = 'C:\Users\info\Desktop\s3\VpO\TP1_Features & Panorama\images\castle1.jpg';
fn4 = 'C:\Users\info\Desktop\s3\VpO\TP1_Features & Panorama\images\castle2.jpg';
detect_harris_features(fn);
detect_harris_features(fn2);
detect_harris_features(fn3);
detect_harris_features(fn4);

function[] = detect_harris_features(filename)
    %% read images
    I1 = imread(filename); % first image
    %% Extract features and descriptors
    % detect features for I7
    gI = im2gray(I1); % convert I1 to graylevel (you can add a test if it's a color image)
    P1 = detectSURFFeatures(gI);            %detect SURF features (you can use SIFT if you want)
    [F1, P1] = extractFeatures(gI, P1);     % extract descriptors
    % plot detected features
    figure; imshow(I1); hold on
    plot(P1.selectStrongest(500),'showOrientation',true);
    hold off
end

