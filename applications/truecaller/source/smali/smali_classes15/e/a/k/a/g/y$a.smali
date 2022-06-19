.class public final Le/a/k/a/g/y$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/g/y;-><init>(Lq3/a/i0;Ljavax/inject/Provider;Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/b0/j/b;Le/a/p5/a0;Le/a/k/n/g/e;Le/a/k/c/s1;Le/a/k/j;Le/a/k/c/r0;Le/a/k/n/h/a;Le/a/k/c/n0;Le/a/k/c/h2/d;Le/a/k/c/p1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/k/c/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/g/y$a;->b:Ljavax/inject/Provider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/g/y$a;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k/c/h;

    return-object v0
.end method
