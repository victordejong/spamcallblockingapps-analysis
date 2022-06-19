.class public final Ln3/k/a/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/CharSequence;

.field public final c:[Ljava/lang/CharSequence;

.field public final d:Z

.field public final e:I

.field public final f:Landroid/os/Bundle;

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "ZI",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/k/a/z;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Ln3/k/a/z;->b:Ljava/lang/CharSequence;

    .line 4
    iput-object p3, p0, Ln3/k/a/z;->c:[Ljava/lang/CharSequence;

    .line 5
    iput-boolean p4, p0, Ln3/k/a/z;->d:Z

    .line 6
    iput p5, p0, Ln3/k/a/z;->e:I

    .line 7
    iput-object p6, p0, Ln3/k/a/z;->f:Landroid/os/Bundle;

    .line 8
    iput-object p7, p0, Ln3/k/a/z;->g:Ljava/util/Set;

    const/4 p1, 0x2

    if-ne p5, p1, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "setEditChoicesBeforeSending requires setAllowFreeFormInput"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
