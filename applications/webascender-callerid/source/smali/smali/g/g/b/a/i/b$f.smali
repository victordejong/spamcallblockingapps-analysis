.class final Lg/g/b/a/i/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/i/b;->p(Lg/g/b/a/i/b$a;J)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/i/b;

.field final synthetic g:Lg/g/b/a/i/b$a;


# direct methods
.method constructor <init>(Lg/g/b/a/i/b;Lg/g/b/a/i/b$a;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/i/b$f;->f:Lg/g/b/a/i/b;

    iput-object p2, p0, Lg/g/b/a/i/b$f;->g:Lg/g/b/a/i/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/a/i/b$f;->f:Lg/g/b/a/i/b;

    invoke-static {v0}, Lg/g/b/a/i/b;->g(Lg/g/b/a/i/b;)Lg/g/b/a/k/h;

    move-result-object v0

    iget-object v1, p0, Lg/g/b/a/i/b$f;->g:Lg/g/b/a/i/b$a;

    invoke-virtual {v1}, Lg/g/b/a/i/b$a;->a()Lg/g/b/a/i/a$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/b/a/k/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
