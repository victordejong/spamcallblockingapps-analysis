.class public Ls1/a/a/a/v0/b/h1/b$b;
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
        "Ls1/a/a/a/v0/j/y/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/b/h1/b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/b$b;->a:Ls1/a/a/a/v0/b/h1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/j/y/g;

    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/b$b;->a:Ls1/a/a/a/v0/b/h1/b;

    invoke-virtual {v1}, Ls1/a/a/a/v0/b/h1/b;->J()Ls1/a/a/a/v0/j/y/i;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/j/y/g;-><init>(Ls1/a/a/a/v0/j/y/i;)V

    return-object v0
.end method
