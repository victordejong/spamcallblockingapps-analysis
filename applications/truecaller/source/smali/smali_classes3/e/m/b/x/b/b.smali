.class public abstract Le/m/b/x/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/b/x/b/g;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/m/b/x/b/b;->b:Z

    .line 3
    invoke-virtual {p0, p1}, Le/m/b/x/b/b;->d(Ljava/lang/String;)Le/m/b/x/b/b;

    return-void
.end method


# virtual methods
.method public abstract c()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;)Le/m/b/x/b/b;
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/x/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/b/x/b/b;->c()Ljava/io/InputStream;

    move-result-object v0

    iget-boolean v1, p0, Le/m/b/x/b/b;->b:Z

    invoke-static {v0, p1, v1}, Le/m/b/x/d/l;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
