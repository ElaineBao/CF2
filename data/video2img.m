%% 从视频里面分割图片


%% 读取视频
video_file='friends0101.avi';
video=VideoReader(video_file);
frame_number=floor(video.Duration * video.FrameRate);

%% 分离图片
for i=3000:frame_number
    image_name=strcat('friends/',num2str(i));
    image_name=strcat(image_name,'.jpg');
    I=read(video,i);                               %读出图片
    imwrite(I,image_name,'jpg');                   %写图片

    I=[];

end