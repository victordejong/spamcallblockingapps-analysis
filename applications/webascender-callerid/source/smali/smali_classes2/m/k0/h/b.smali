.class public interface abstract Lm/k0/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lm/k0/h/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm/k0/h/a$a;

    invoke-direct {v0}, Lm/k0/h/a$a;-><init>()V

    sput-object v0, Lm/k0/h/b;->a:Lm/k0/h/b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/File;)Ln/d0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/io/File;)Ln/b0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract c(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(Ljava/io/File;)Z
.end method

.method public abstract e(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract f(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract g(Ljava/io/File;)Ln/b0;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract h(Ljava/io/File;)J
.end method
