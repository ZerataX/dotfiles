{ config, lib, pkgs, ... }: {
  programs.mpv = {
    enable = true;

    config = {
      # General 
      profile = "gpu-hq";
      gpu-api = "vulkan";

      spirv-compiler = "shaderc";

      # Tweaks
      cursor-autohide = 100;
      force-window = "immediate";
      keep-open = "yes";
      fs = true;
      fs-screen = 1;
      
      #Priority
      slang = "gem,ger,gmh,de,deu,en,eng";
      alang = "ja,jpn,de,deu,ger,en,eng";
      
      # Subs
      demuxer-mkv-subtitle-preroll = "yes";
      sub-ass-vsfilter-blur-compat = "no";
      sub-fix-timing = "no";
      # the following options only apply to subtitles without own styling (i.e. not ASS but e.g. SRT)
      sub-font = "Open Sans Semibold";
      sub-font-size = 48;
      sub-color = "#FFFFFFFF";
      sub-border-color = "#FF262626";
      sub-border-size = 3.2;
      sub-shadow-offset = 1;
      sub-shadow-color = "#33000000";
      sub-spacing = 0.5;
      
      # Volume
      volume = 100;
      volume-max = 200;
      
      #Screenshot
      screenshot-format = "png";
      screenshot-high-bit-depth = "yes";
      screenshot-png-compression = 1;
      screenshot-jpeg-quality = 95;
      screenshot-directory = "~/Documents/mpv/Screenshots";
      screenshot-template = "%f-%wH.%wM.%wS.%wT-#%#00n";
      
      # Deband
      deband = "no";
      deband-iterations = 4;
      deband-threshold = 50;
      deband-range = 16;
      deband-grain = 0;
      
      #Grain & Resizer
      # glsl-shader = "~/Documents/mpv/Shaders/noise_static_luma.hook";
      glsl-shader = "~/Documents/mpv/Shaders/ravu-r4.hook";
      # fbo-format = "rgba16hf";
      
      #Resizer
      scale = "ewa_lanczossharp";
      dscale = "ewa_lanczos";
      cscale = "ewa_lanczossoft";
      
      #Interpolation
      blend-subtitles = "yes";
      video-sync = "display-resample";
      interpolation = "yes";
      tscale = "box";
      tscale-window = "sphinx";
      tscale-radius = 0.95;
      tscale-clamp = 0.0;
    };
  };
}