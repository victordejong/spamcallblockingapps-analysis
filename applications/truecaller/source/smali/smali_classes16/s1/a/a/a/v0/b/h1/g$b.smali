.class public Ls1/a/a/a/v0/b/h1/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/b/h1/g;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/j1;ZILs1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/b/u0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/m/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/f/e;

.field public final synthetic b:Ls1/a/a/a/v0/b/h1/g;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/g;Ls1/a/a/a/v0/f/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/g$b;->b:Ls1/a/a/a/v0/b/h1/g;

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/g$b;->a:Ls1/a/a/a/v0/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/g$b;->b:Ls1/a/a/a/v0/b/h1/g;

    invoke-virtual {v1}, Ls1/a/a/a/v0/b/h1/g;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Ls1/a/a/a/v0/j/y/h;

    new-instance v5, Ls1/a/a/a/v0/b/h1/h;

    invoke-direct {v5, p0}, Ls1/a/a/a/v0/b/h1/h;-><init>(Ls1/a/a/a/v0/b/h1/g$b;)V

    .line 5
    sget-object v6, Ls1/a/a/a/v0/l/e;->e:Ls1/a/a/a/v0/l/m;

    const-string v7, "LockBasedStorageManager.NO_LOCKS"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v6, v5}, Ls1/a/a/a/v0/j/y/h;-><init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Ls1/a/a/a/v0/m/f0;->h(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/j/y/i;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    return-object v0
.end method
