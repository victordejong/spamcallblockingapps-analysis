package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.source.MediaSourceEventListener;
import androidx.media2.exoplayer.external.upstream.Allocator;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import androidx.media2.exoplayer.external.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media2.exoplayer.external.upstream.LoadErrorHandlingPolicy;
import androidx.media2.exoplayer.external.upstream.TransferListener;
import androidx.media2.exoplayer.external.util.Assertions;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SingleSampleMediaSource.class */
public final class SingleSampleMediaSource extends BaseMediaSource {
    public final DataSource.Factory dataSourceFactory;
    public final DataSpec dataSpec;
    public final long durationUs;
    public final Format format;
    public final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    @Nullable
    public final Object tag;
    public final Timeline timeline;
    @Nullable
    public TransferListener transferListener;
    public final boolean treatLoadErrorsAsEndOfStream;

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListener.class */
    public interface EventListener {
        void onLoadError(int i, IOException iOException);
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SingleSampleMediaSource$EventListenerWrapper.class */
    public static final class EventListenerWrapper extends DefaultMediaSourceEventListener {
        public final EventListener eventListener;
        public final int eventSourceId;

        public EventListenerWrapper(EventListener eventListener, int i) {
            this.eventListener = (EventListener) Assertions.checkNotNull(eventListener);
            this.eventSourceId = i;
        }

        @Override // androidx.media2.exoplayer.external.source.DefaultMediaSourceEventListener, androidx.media2.exoplayer.external.source.MediaSourceEventListener
        public void onLoadError(int i, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.LoadEventInfo loadEventInfo, MediaSourceEventListener.MediaLoadData mediaLoadData, IOException iOException, boolean z) {
            this.eventListener.onLoadError(this.eventSourceId, iOException);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/SingleSampleMediaSource$Factory.class */
    public static final class Factory {
        public final DataSource.Factory dataSourceFactory;
        public boolean isCreateCalled;
        public LoadErrorHandlingPolicy loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
        @Nullable
        public Object tag;
        public boolean treatLoadErrorsAsEndOfStream;

        public Factory(DataSource.Factory factory) {
            this.dataSourceFactory = (DataSource.Factory) Assertions.checkNotNull(factory);
        }

        public SingleSampleMediaSource createMediaSource(Uri uri, Format format, long j) {
            this.isCreateCalled = true;
            return new SingleSampleMediaSource(uri, this.dataSourceFactory, format, j, this.loadErrorHandlingPolicy, this.treatLoadErrorsAsEndOfStream, this.tag);
        }

        @Deprecated
        public SingleSampleMediaSource createMediaSource(Uri uri, Format format, long j, @Nullable Handler handler, @Nullable MediaSourceEventListener mediaSourceEventListener) {
            SingleSampleMediaSource createMediaSource = createMediaSource(uri, format, j);
            if (!(handler == null || mediaSourceEventListener == null)) {
                createMediaSource.addEventListener(handler, mediaSourceEventListener);
            }
            return createMediaSource;
        }

        public Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            Assertions.checkState(!this.isCreateCalled);
            this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
            return this;
        }

        @Deprecated
        public Factory setMinLoadableRetryCount(int i) {
            return setLoadErrorHandlingPolicy(new DefaultLoadErrorHandlingPolicy(i));
        }

        public Factory setTag(Object obj) {
            Assertions.checkState(!this.isCreateCalled);
            this.tag = obj;
            return this;
        }

        public Factory setTreatLoadErrorsAsEndOfStream(boolean z) {
            Assertions.checkState(!this.isCreateCalled);
            this.treatLoadErrorsAsEndOfStream = z;
            return this;
        }
    }

    @Deprecated
    public SingleSampleMediaSource(Uri uri, DataSource.Factory factory, Format format, long j) {
        this(uri, factory, format, j, 3);
    }

    @Deprecated
    public SingleSampleMediaSource(Uri uri, DataSource.Factory factory, Format format, long j, int i) {
        this(uri, factory, format, j, new DefaultLoadErrorHandlingPolicy(i), false, null);
    }

    @Deprecated
    public SingleSampleMediaSource(Uri uri, DataSource.Factory factory, Format format, long j, int i, Handler handler, EventListener eventListener, int i2, boolean z) {
        this(uri, factory, format, j, new DefaultLoadErrorHandlingPolicy(i), z, null);
        if (handler != null && eventListener != null) {
            addEventListener(handler, new EventListenerWrapper(eventListener, i2));
        }
    }

    public SingleSampleMediaSource(Uri uri, DataSource.Factory factory, Format format, long j, LoadErrorHandlingPolicy loadErrorHandlingPolicy, boolean z, @Nullable Object obj) {
        this.dataSourceFactory = factory;
        this.format = format;
        this.durationUs = j;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.treatLoadErrorsAsEndOfStream = z;
        this.tag = obj;
        this.dataSpec = new DataSpec(uri, 1);
        this.timeline = new SinglePeriodTimeline(j, true, false, obj);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        return new SingleSampleMediaPeriod(this.dataSpec, this.dataSourceFactory, this.transferListener, this.format, this.durationUs, this.loadErrorHandlingPolicy, createEventDispatcher(mediaPeriodId), this.treatLoadErrorsAsEndOfStream);
    }

    @Override // androidx.media2.exoplayer.external.source.BaseMediaSource, androidx.media2.exoplayer.external.source.MediaSource
    @Nullable
    public Object getTag() {
        return this.tag;
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
    }

    @Override // androidx.media2.exoplayer.external.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        this.transferListener = transferListener;
        refreshSourceInfo(this.timeline, null);
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((SingleSampleMediaPeriod) mediaPeriod).release();
    }

    @Override // androidx.media2.exoplayer.external.source.BaseMediaSource
    public void releaseSourceInternal() {
    }
}
