package androidx.media2.exoplayer.external.source.hls.playlist;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.offline.StreamKey;
import androidx.media2.exoplayer.external.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist.class */
public final class HlsMasterPlaylist extends HlsPlaylist {
    public static final HlsMasterPlaylist EMPTY = new HlsMasterPlaylist("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());
    public static final int GROUP_INDEX_AUDIO = 1;
    public static final int GROUP_INDEX_SUBTITLE = 2;
    public static final int GROUP_INDEX_VARIANT = 0;
    public final List<Rendition> audios;
    public final List<Rendition> closedCaptions;
    public final List<Uri> mediaPlaylistUrls;
    public final Format muxedAudioFormat;
    public final List<Format> muxedCaptionFormats;
    public final List<DrmInitData> sessionKeyDrmInitData;
    public final List<Rendition> subtitles;
    public final Map<String, String> variableDefinitions;
    public final List<Variant> variants;
    public final List<Rendition> videos;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Rendition.class */
    public static final class Rendition {
        public final Format format;
        public final String groupId;
        public final String name;
        @Nullable
        public final Uri url;

        public Rendition(@Nullable Uri uri, Format format, String str, String str2) {
            this.url = uri;
            this.format = format;
            this.groupId = str;
            this.name = str2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsMasterPlaylist$Variant.class */
    public static final class Variant {
        @Nullable
        public final String audioGroupId;
        @Nullable
        public final String captionGroupId;
        public final Format format;
        @Nullable
        public final String subtitleGroupId;
        public final Uri url;
        @Nullable
        public final String videoGroupId;

        public Variant(Uri uri, Format format, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            this.url = uri;
            this.format = format;
            this.videoGroupId = str;
            this.audioGroupId = str2;
            this.subtitleGroupId = str3;
            this.captionGroupId = str4;
        }

        public static Variant createMediaPlaylistVariantUrl(Uri uri) {
            return new Variant(uri, Format.createContainerFormat("0", null, MimeTypes.APPLICATION_M3U8, null, null, -1, 0, 0, null), null, null, null, null);
        }

        public Variant copyWithFormat(Format format) {
            return new Variant(this.url, format, this.videoGroupId, this.audioGroupId, this.subtitleGroupId, this.captionGroupId);
        }
    }

    public HlsMasterPlaylist(String str, List<String> list, List<Variant> list2, List<Rendition> list3, List<Rendition> list4, List<Rendition> list5, List<Rendition> list6, Format format, List<Format> list7, boolean z, Map<String, String> map, List<DrmInitData> list8) {
        super(str, list, z);
        this.mediaPlaylistUrls = Collections.unmodifiableList(getMediaPlaylistUrls(list2, list3, list4, list5, list6));
        this.variants = Collections.unmodifiableList(list2);
        this.videos = Collections.unmodifiableList(list3);
        this.audios = Collections.unmodifiableList(list4);
        this.subtitles = Collections.unmodifiableList(list5);
        this.closedCaptions = Collections.unmodifiableList(list6);
        this.muxedAudioFormat = format;
        this.muxedCaptionFormats = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.variableDefinitions = Collections.unmodifiableMap(map);
        this.sessionKeyDrmInitData = Collections.unmodifiableList(list8);
    }

    public static void addMediaPlaylistUrls(List<Rendition> list, List<Uri> list2) {
        for (int i = 0; i < list.size(); i++) {
            Uri uri = list.get(i).url;
            if (uri != null && !list2.contains(uri)) {
                list2.add(uri);
            }
        }
    }

    public static <T> List<T> copyStreams(List<T> list, int i, List<StreamKey> list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            T t = list.get(i2);
            int i3 = 0;
            while (true) {
                if (i3 < list2.size()) {
                    StreamKey streamKey = list2.get(i3);
                    if (streamKey.groupIndex == i && streamKey.trackIndex == i2) {
                        arrayList.add(t);
                        break;
                    }
                    i3++;
                }
            }
        }
        return arrayList;
    }

    public static HlsMasterPlaylist createSingleVariantMasterPlaylist(String str) {
        return new HlsMasterPlaylist(null, Collections.emptyList(), Collections.singletonList(Variant.createMediaPlaylistVariantUrl(Uri.parse(str))), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
    }

    public static List<Uri> getMediaPlaylistUrls(List<Variant> list, List<Rendition> list2, List<Rendition> list3, List<Rendition> list4, List<Rendition> list5) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            Uri uri = list.get(i).url;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        addMediaPlaylistUrls(list2, arrayList);
        addMediaPlaylistUrls(list3, arrayList);
        addMediaPlaylistUrls(list4, arrayList);
        addMediaPlaylistUrls(list5, arrayList);
        return arrayList;
    }

    @Override // androidx.media2.exoplayer.external.offline.FilterableManifest
    public HlsPlaylist copy(List<StreamKey> list) {
        return new HlsMasterPlaylist(this.baseUri, this.tags, copyStreams(this.variants, 0, list), Collections.emptyList(), copyStreams(this.audios, 1, list), copyStreams(this.subtitles, 2, list), Collections.emptyList(), this.muxedAudioFormat, this.muxedCaptionFormats, this.hasIndependentSegments, this.variableDefinitions, this.sessionKeyDrmInitData);
    }
}
