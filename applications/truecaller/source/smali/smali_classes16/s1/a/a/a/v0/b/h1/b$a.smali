.class public Ls1/a/a/a/v0/b/h1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/b/h1/b;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/f/e;)V
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
.field public final synthetic a:Ls1/a/a/a/v0/b/h1/b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/b$a;->a:Ls1/a/a/a/v0/b/h1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/b$a;->a:Ls1/a/a/a/v0/b/h1/b;

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/b;->J()Ls1/a/a/a/v0/j/y/i;

    move-result-object v1

    new-instance v2, Ls1/a/a/a/v0/b/h1/a;

    invoke-direct {v2, p0}, Ls1/a/a/a/v0/b/h1/a;-><init>(Ls1/a/a/a/v0/b/h1/b$a;)V

    invoke-static {v0, v1, v2}, Ls1/a/a/a/v0/m/f1;->n(Ls1/a/a/a/v0/b/h;Ls1/a/a/a/v0/j/y/i;Ls1/z/b/l;)Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    return-object v0
.end method
