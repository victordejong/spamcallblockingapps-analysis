.class public Ln3/y/b/a/n0/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/n0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/b/a/n0/e;


# direct methods
.method public constructor <init>(Ln3/y/b/a/n0/e;Ln3/y/b/a/n0/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/b/a/n0/e$b;->a:Ln3/y/b/a/n0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 6

    const/4 v0, -0x3

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v5, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Ln3/y/b/a/n0/e$b;->a:Ln3/y/b/a/n0/e;

    .line 2
    iput v5, p1, Ln3/y/b/a/n0/e;->e:I

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Ln3/y/b/a/n0/e$b;->a:Ln3/y/b/a/n0/e;

    .line 4
    iput v4, p1, Ln3/y/b/a/n0/e;->e:I

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Ln3/y/b/a/n0/e$b;->a:Ln3/y/b/a/n0/e;

    .line 6
    iput v3, p1, Ln3/y/b/a/n0/e;->e:I

    goto :goto_1

    .line 7
    :cond_3
    iget-object p1, p0, Ln3/y/b/a/n0/e$b;->a:Ln3/y/b/a/n0/e;

    .line 8
    iget-object v0, p1, Ln3/y/b/a/n0/e;->d:Ln3/y/b/a/n0/c;

    if-eqz v0, :cond_4

    iget v0, v0, Ln3/y/b/a/n0/c;->a:I

    if-ne v0, v5, :cond_4

    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    .line 9
    iput v3, p1, Ln3/y/b/a/n0/e;->e:I

    goto :goto_1

    .line 10
    :cond_5
    iput v2, p1, Ln3/y/b/a/n0/e;->e:I

    .line 11
    :goto_1
    iget-object p1, p0, Ln3/y/b/a/n0/e$b;->a:Ln3/y/b/a/n0/e;

    .line 12
    iget v0, p1, Ln3/y/b/a/n0/e;->e:I

    if-eq v0, v4, :cond_9

    if-eqz v0, :cond_a

    if-eq v0, v5, :cond_8

    if-eq v0, v3, :cond_7

    if-ne v0, v2, :cond_6

    goto :goto_2

    .line 13
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Ln3/y/b/a/n0/e$b;->a:Ln3/y/b/a/n0/e;

    .line 14
    iget v0, v0, Ln3/y/b/a/n0/e;->e:I

    const/16 v1, 0x26

    const-string v2, "Unknown audio focus state: "

    .line 15
    invoke-static {v1, v2, v0}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_7
    iget-object p1, p1, Ln3/y/b/a/n0/e;->c:Ln3/y/b/a/n0/e$c;

    .line 17
    check-cast p1, Ln3/y/b/a/k0$c;

    invoke-virtual {p1, v1}, Ln3/y/b/a/k0$c;->c(I)V

    goto :goto_2

    .line 18
    :cond_8
    iget-object p1, p1, Ln3/y/b/a/n0/e;->c:Ln3/y/b/a/n0/e$c;

    .line 19
    check-cast p1, Ln3/y/b/a/k0$c;

    invoke-virtual {p1, v5}, Ln3/y/b/a/k0$c;->c(I)V

    goto :goto_2

    .line 20
    :cond_9
    iget-object p1, p1, Ln3/y/b/a/n0/e;->c:Ln3/y/b/a/n0/e$c;

    .line 21
    check-cast p1, Ln3/y/b/a/k0$c;

    invoke-virtual {p1, v4}, Ln3/y/b/a/k0$c;->c(I)V

    .line 22
    iget-object p1, p0, Ln3/y/b/a/n0/e$b;->a:Ln3/y/b/a/n0/e;

    .line 23
    invoke-virtual {p1, v5}, Ln3/y/b/a/n0/e;->a(Z)V

    .line 24
    :cond_a
    :goto_2
    iget-object p1, p0, Ln3/y/b/a/n0/e$b;->a:Ln3/y/b/a/n0/e;

    .line 25
    iget v0, p1, Ln3/y/b/a/n0/e;->e:I

    if-ne v0, v2, :cond_b

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_3

    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    :goto_3
    iget v1, p1, Ln3/y/b/a/n0/e;->g:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_c

    .line 27
    iput v0, p1, Ln3/y/b/a/n0/e;->g:F

    .line 28
    iget-object p1, p1, Ln3/y/b/a/n0/e;->c:Ln3/y/b/a/n0/e$c;

    .line 29
    check-cast p1, Ln3/y/b/a/k0$c;

    .line 30
    iget-object p1, p1, Ln3/y/b/a/k0$c;->a:Ln3/y/b/a/k0;

    .line 31
    invoke-virtual {p1}, Ln3/y/b/a/k0;->j()V

    :cond_c
    return-void
.end method
