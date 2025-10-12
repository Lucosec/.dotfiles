#
# ~/.bash_profile
#
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_DESKTOP_DIR=$HOME/Desktop
export XDG_DOWNLOAD_DIR=$HOME/Downloads
export XDG_TEMPLATES_DIR=$HOME/Modelos
export XDG_PUBLICSHARE_DIR=$HOME/Público
export XDG_DOCUMENTS_DIR=$HOME/Documentos
export XDG_MUSIC_DIR=$HOME/Músicas
export XDG_PICTURES_DIR=$HOME/Imagens
export XDG_VIDEOS_DIR=$HOME/Vídeos

[[ -f ~/.bashrc ]] && . ~/.bashrc


# enforce RADV vulkan implementation
export AMD_VULKAN_ICD=RADV

# increase AMD and Intel cache size to 12GB
export MESA_SHADER_CACHE_MAX_SIZE=12G
# enforce RADV vulkan implementation
export AMD_VULKAN_ICD=RADV

# increase AMD and Intel cache size to 12GB
export MESA_SHADER_CACHE_MAX_SIZE=12G
