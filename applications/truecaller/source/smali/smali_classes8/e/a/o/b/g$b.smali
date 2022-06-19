.class public final Le/a/o/b/g$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/b/g;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/o/b/o;Le/a/o/p/a/c;Le/a/o/p/e/e;Le/a/b0/q/z;Le/a/o/p/b/d;Le/a/b0/e/l;Le/a/d4/c;Le/a/o/b/k;Ls1/w/f;Ls1/w/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/o/b/g;


# direct methods
.method public constructor <init>(Le/a/o/b/g;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/g$b;->b:Le/a/o/b/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o/b/g$b;->b:Le/a/o/b/g;

    .line 2
    iget-object v0, v0, Le/a/o/b/g;->l:Le/a/d4/c;

    .line 3
    sget-object v1, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {v0, v1}, Le/a/d4/c;->d(Le/a/d4/e;)Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
