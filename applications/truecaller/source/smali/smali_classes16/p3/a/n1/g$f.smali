.class public Lp3/a/n1/g$f;
.super Lp3/a/n1/g$g;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final d:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Lp3/a/n1/g;Ljava/lang/Runnable;Ljava/io/Closeable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lp3/a/n1/g$g;-><init>(Lp3/a/n1/g;Ljava/lang/Runnable;Lp3/a/n1/g$a;)V

    .line 2
    iput-object p3, p0, Lp3/a/n1/g$f;->d:Ljava/io/Closeable;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/g$f;->d:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method
