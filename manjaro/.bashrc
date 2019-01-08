function recx {
  ffmpeg -s 1920x1080 -r 60 -f x11grab -i :0.0+0,0 -f pulse -ac 2 -i default \
    -vcodec libx264 -preset ultrafast -qp 0 -pix_fmt yuv444p \
    /home/$USER/Videos/current.mkv
}
