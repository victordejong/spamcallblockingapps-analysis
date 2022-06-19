.class public final synthetic Le/o/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/o/a/a/a;->a:Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le/o/a/a/a;->a:Lcom/nll/nativelibs/callrecording/AudioRecordWrapper;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/nll/nativelibs/callrecording/Native;->stop7()I

    return-void
.end method
