.class public final Lg/g/a/a/j/c/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/b/j1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/a/a/j/c/e;->c()Lg/g/a/b/j1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/g/a/a/j/c/e;


# direct methods
.method constructor <init>(Lg/g/a/a/j/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/g/a/a/j/c/e$a;->a:Lg/g/a/a/j/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lg/g/a/b/j1/n/b;",
            "Lg/g/a/b/j1/n/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/j/c/e$a;->a:Lg/g/a/a/j/c/e;

    invoke-static {v0}, Lg/g/a/a/j/c/e;->h(Lg/g/a/a/j/c/e;)Lg/g/a/a/j/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/j/c/d;->c()Lg/g/a/a/j/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/j/c/c;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/j/c/e$a;->a:Lg/g/a/a/j/c/e;

    invoke-static {v0}, Lg/g/a/a/j/c/e;->h(Lg/g/a/a/j/c/e;)Lg/g/a/a/j/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/j/c/d;->c()Lg/g/a/a/j/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/j/c/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
