.class public Ls1/a/a/a/v0/b/h1/g$a;
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
        "Ls1/a/a/a/v0/m/v0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/l/m;

.field public final synthetic b:Ls1/a/a/a/v0/b/u0;

.field public final synthetic c:Ls1/a/a/a/v0/b/h1/g;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/g;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/u0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/g$a;->c:Ls1/a/a/a/v0/b/h1/g;

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/g$a;->a:Ls1/a/a/a/v0/l/m;

    iput-object p3, p0, Ls1/a/a/a/v0/b/h1/g$a;->b:Ls1/a/a/a/v0/b/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Ls1/a/a/a/v0/b/h1/g$c;

    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/g$a;->c:Ls1/a/a/a/v0/b/h1/g;

    iget-object v2, p0, Ls1/a/a/a/v0/b/h1/g$a;->a:Ls1/a/a/a/v0/l/m;

    iget-object v3, p0, Ls1/a/a/a/v0/b/h1/g$a;->b:Ls1/a/a/a/v0/b/u0;

    invoke-direct {v0, v1, v2, v3}, Ls1/a/a/a/v0/b/h1/g$c;-><init>(Ls1/a/a/a/v0/b/h1/g;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/u0;)V

    return-object v0
.end method
