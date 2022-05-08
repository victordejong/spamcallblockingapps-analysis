package com.bumptech.glide;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.util.Pools;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.data.DataRewinderRegistry;
import com.bumptech.glide.load.engine.DecodePath;
import com.bumptech.glide.load.engine.LoadPath;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.ModelLoaderRegistry;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.load.resource.transcode.TranscoderRegistry;
import com.bumptech.glide.provider.EncoderRegistry;
import com.bumptech.glide.provider.ImageHeaderParserRegistry;
import com.bumptech.glide.provider.LoadPathCache;
import com.bumptech.glide.provider.ModelToResourceClassCache;
import com.bumptech.glide.provider.ResourceDecoderRegistry;
import com.bumptech.glide.provider.ResourceEncoderRegistry;
import com.bumptech.glide.util.pool.FactoryPools;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry.class */
public class Registry {
    private static final String BUCKET_APPEND_ALL = "legacy_append";
    public static final String BUCKET_BITMAP = "Bitmap";
    public static final String BUCKET_BITMAP_DRAWABLE = "BitmapDrawable";
    public static final String BUCKET_GIF = "Gif";
    private static final String BUCKET_PREPEND_ALL = "legacy_prepend_all";
    private final ModelToResourceClassCache modelToResourceClassCache = new ModelToResourceClassCache();
    private final LoadPathCache loadPathCache = new LoadPathCache();
    private final Pools.Pool<List<Throwable>> throwableListPool = FactoryPools.threadSafeList();
    private final ModelLoaderRegistry modelLoaderRegistry = new ModelLoaderRegistry(this.throwableListPool);
    private final EncoderRegistry encoderRegistry = new EncoderRegistry();
    private final ResourceDecoderRegistry decoderRegistry = new ResourceDecoderRegistry();
    private final ResourceEncoderRegistry resourceEncoderRegistry = new ResourceEncoderRegistry();
    private final DataRewinderRegistry dataRewinderRegistry = new DataRewinderRegistry();
    private final TranscoderRegistry transcoderRegistry = new TranscoderRegistry();
    private final ImageHeaderParserRegistry imageHeaderParserRegistry = new ImageHeaderParserRegistry();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$MissingComponentException.class */
    public static class MissingComponentException extends RuntimeException {
        public MissingComponentException(@NonNull String str) {
            super(str);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$NoImageHeaderParserException.class */
    public static final class NoImageHeaderParserException extends MissingComponentException {
        public NoImageHeaderParserException() {
            super("Failed to find image header parser.");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$NoModelLoaderAvailableException.class */
    public static class NoModelLoaderAvailableException extends MissingComponentException {
        public NoModelLoaderAvailableException(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }

        public NoModelLoaderAvailableException(@NonNull Object obj) {
            super("Failed to find any ModelLoaders for model: " + obj);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$NoResultEncoderAvailableException.class */
    public static class NoResultEncoderAvailableException extends MissingComponentException {
        public NoResultEncoderAvailableException(@NonNull Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$NoSourceEncoderAvailableException.class */
    public static class NoSourceEncoderAvailableException extends MissingComponentException {
        public NoSourceEncoderAvailableException(@NonNull Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public Registry() {
        setResourceDecoderBucketPriorityList(Arrays.asList(BUCKET_GIF, BUCKET_BITMAP, BUCKET_BITMAP_DRAWABLE));
    }

    @NonNull
    private <Data, TResource, Transcode> List<DecodePath<Data, TResource, Transcode>> getDecodePaths(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.decoderRegistry.getResourceClasses(cls, cls2)) {
            for (Class cls5 : this.transcoderRegistry.getTranscodeClasses(cls4, cls3)) {
                arrayList.add(new DecodePath(cls, cls4, cls5, this.decoderRegistry.getDecoders(cls, cls4), this.transcoderRegistry.get(cls4, cls5), this.throwableListPool));
            }
        }
        return arrayList;
    }

    @NonNull
    public <Data> Registry append(@NonNull Class<Data> cls, @NonNull Encoder<Data> encoder) {
        this.encoderRegistry.append(cls, encoder);
        return this;
    }

    @NonNull
    public <TResource> Registry append(@NonNull Class<TResource> cls, @NonNull ResourceEncoder<TResource> resourceEncoder) {
        this.resourceEncoderRegistry.append(cls, resourceEncoder);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry append(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull ResourceDecoder<Data, TResource> resourceDecoder) {
        append(BUCKET_APPEND_ALL, cls, cls2, resourceDecoder);
        return this;
    }

    @NonNull
    public <Model, Data> Registry append(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<Model, Data> modelLoaderFactory) {
        this.modelLoaderRegistry.append(cls, cls2, modelLoaderFactory);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry append(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull ResourceDecoder<Data, TResource> resourceDecoder) {
        this.decoderRegistry.append(str, resourceDecoder, cls, cls2);
        return this;
    }

    @NonNull
    public List<ImageHeaderParser> getImageHeaderParsers() {
        List<ImageHeaderParser> parsers = this.imageHeaderParserRegistry.getParsers();
        if (!parsers.isEmpty()) {
            return parsers;
        }
        throw new NoImageHeaderParserException();
    }

    @Nullable
    public <Data, TResource, Transcode> LoadPath<Data, TResource, Transcode> getLoadPath(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        LoadPath<?, ?, ?> loadPath = this.loadPathCache.get(cls, cls2, cls3);
        if (this.loadPathCache.isEmptyLoadPath(loadPath)) {
            return null;
        }
        LoadPath<Data, TResource, Transcode> loadPath2 = loadPath;
        if (loadPath == null) {
            List<DecodePath<Data, TResource, Transcode>> decodePaths = getDecodePaths(cls, cls2, cls3);
            loadPath2 = decodePaths.isEmpty() ? null : new LoadPath<>(cls, cls2, cls3, decodePaths, this.throwableListPool);
            this.loadPathCache.put(cls, cls2, cls3, loadPath2);
        }
        return loadPath2;
    }

    @NonNull
    public <Model> List<ModelLoader<Model, ?>> getModelLoaders(@NonNull Model model) {
        List<ModelLoader<Model, ?>> modelLoaders = this.modelLoaderRegistry.getModelLoaders(model);
        if (!modelLoaders.isEmpty()) {
            return modelLoaders;
        }
        throw new NoModelLoaderAvailableException(model);
    }

    @NonNull
    public <Model, TResource, Transcode> List<Class<?>> getRegisteredResourceClasses(@NonNull Class<Model> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        List<Class<?>> list = this.modelToResourceClassCache.get(cls, cls2);
        List<Class<?>> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
            for (Class<?> cls4 : this.modelLoaderRegistry.getDataClasses(cls)) {
                for (Class<?> cls5 : this.decoderRegistry.getResourceClasses(cls4, cls2)) {
                    if (!this.transcoderRegistry.getTranscodeClasses(cls5, cls3).isEmpty() && !list2.contains(cls5)) {
                        list2.add(cls5);
                    }
                }
            }
            this.modelToResourceClassCache.put(cls, cls2, Collections.unmodifiableList(list2));
        }
        return list2;
    }

    @NonNull
    public <X> ResourceEncoder<X> getResultEncoder(@NonNull Resource<X> resource) throws NoResultEncoderAvailableException {
        ResourceEncoder<X> resourceEncoder = this.resourceEncoderRegistry.get(resource.getResourceClass());
        if (resourceEncoder != null) {
            return resourceEncoder;
        }
        throw new NoResultEncoderAvailableException(resource.getResourceClass());
    }

    @NonNull
    public <X> DataRewinder<X> getRewinder(@NonNull X x) {
        return this.dataRewinderRegistry.build(x);
    }

    @NonNull
    public <X> Encoder<X> getSourceEncoder(@NonNull X x) throws NoSourceEncoderAvailableException {
        Encoder<X> encoder = this.encoderRegistry.getEncoder(x.getClass());
        if (encoder != null) {
            return encoder;
        }
        throw new NoSourceEncoderAvailableException(x.getClass());
    }

    public boolean isResourceEncoderAvailable(@NonNull Resource<?> resource) {
        return this.resourceEncoderRegistry.get(resource.getResourceClass()) != null;
    }

    @NonNull
    public <Data> Registry prepend(@NonNull Class<Data> cls, @NonNull Encoder<Data> encoder) {
        this.encoderRegistry.prepend(cls, encoder);
        return this;
    }

    @NonNull
    public <TResource> Registry prepend(@NonNull Class<TResource> cls, @NonNull ResourceEncoder<TResource> resourceEncoder) {
        this.resourceEncoderRegistry.prepend(cls, resourceEncoder);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry prepend(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull ResourceDecoder<Data, TResource> resourceDecoder) {
        prepend(BUCKET_PREPEND_ALL, cls, cls2, resourceDecoder);
        return this;
    }

    @NonNull
    public <Model, Data> Registry prepend(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<Model, Data> modelLoaderFactory) {
        this.modelLoaderRegistry.prepend(cls, cls2, modelLoaderFactory);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry prepend(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull ResourceDecoder<Data, TResource> resourceDecoder) {
        this.decoderRegistry.prepend(str, resourceDecoder, cls, cls2);
        return this;
    }

    @NonNull
    public Registry register(@NonNull ImageHeaderParser imageHeaderParser) {
        this.imageHeaderParserRegistry.add(imageHeaderParser);
        return this;
    }

    @NonNull
    public Registry register(@NonNull DataRewinder.Factory<?> factory) {
        this.dataRewinderRegistry.register(factory);
        return this;
    }

    @NonNull
    @Deprecated
    public <Data> Registry register(@NonNull Class<Data> cls, @NonNull Encoder<Data> encoder) {
        return append(cls, encoder);
    }

    @NonNull
    @Deprecated
    public <TResource> Registry register(@NonNull Class<TResource> cls, @NonNull ResourceEncoder<TResource> resourceEncoder) {
        return append((Class) cls, (ResourceEncoder) resourceEncoder);
    }

    @NonNull
    public <TResource, Transcode> Registry register(@NonNull Class<TResource> cls, @NonNull Class<Transcode> cls2, @NonNull ResourceTranscoder<TResource, Transcode> resourceTranscoder) {
        this.transcoderRegistry.register(cls, cls2, resourceTranscoder);
        return this;
    }

    @NonNull
    public <Model, Data> Registry replace(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        this.modelLoaderRegistry.replace(cls, cls2, modelLoaderFactory);
        return this;
    }

    @NonNull
    public final Registry setResourceDecoderBucketPriorityList(@NonNull List<String> list) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(0, BUCKET_PREPEND_ALL);
        arrayList.add(BUCKET_APPEND_ALL);
        this.decoderRegistry.setBucketPriorityList(arrayList);
        return this;
    }
}
