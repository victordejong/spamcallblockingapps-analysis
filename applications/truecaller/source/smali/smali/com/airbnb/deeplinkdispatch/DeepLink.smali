.class public interface abstract annotation Lcom/airbnb/deeplinkdispatch/DeepLink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final IS_DEEP_LINK:Ljava/lang/String; = "is_deep_link_flag"

.field public static final REFERRER_URI:Ljava/lang/String; = "android.intent.extra.REFERRER"

.field public static final URI:Ljava/lang/String; = "deep_link_uri"


# virtual methods
.method public abstract value()[Ljava/lang/String;
.end method
