.class public interface abstract Lcom/hiya/stingray/util/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:J

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/joda/time/j;->k:Lorg/joda/time/j;

    invoke-virtual {v0}, Lorg/joda/time/j;->n()Lorg/joda/time/v;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/v;->m()I

    move-result v0

    sput v0, Lcom/hiya/stingray/util/m;->a:I

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/hiya/stingray/util/m;->b:J

    const/16 v0, 0xc

    .line 3
    invoke-static {v0}, Lorg/joda/time/j;->m(I)Lorg/joda/time/j;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/j;->n()Lorg/joda/time/v;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/v;->m()I

    move-result v0

    sput v0, Lcom/hiya/stingray/util/m;->c:I

    return-void
.end method
