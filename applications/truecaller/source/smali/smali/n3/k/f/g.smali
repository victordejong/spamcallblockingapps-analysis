.class public Ln3/k/f/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/k/h/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/k/h/b<",
        "Ln3/k/f/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/k/f/c;


# direct methods
.method public constructor <init>(Ln3/k/f/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/k/f/g;->a:Ln3/k/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ln3/k/f/j$a;

    .line 2
    iget-object v0, p0, Ln3/k/f/g;->a:Ln3/k/f/c;

    invoke-virtual {v0, p1}, Ln3/k/f/c;->a(Ln3/k/f/j$a;)V

    return-void
.end method
