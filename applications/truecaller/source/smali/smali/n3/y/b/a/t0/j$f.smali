.class public final Ln3/y/b/a/t0/j$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Ln3/y/b/a/t0/j$d;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ln3/y/b/a/t0/j$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ln3/y/b/a/t0/j$d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/y/b/a/t0/j$f;->a:I

    .line 3
    iput-object p2, p0, Ln3/y/b/a/t0/j$f;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Ln3/y/b/a/t0/j$f;->c:Ln3/y/b/a/t0/j$d;

    return-void
.end method
