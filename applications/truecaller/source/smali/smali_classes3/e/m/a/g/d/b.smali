.class public Le/m/a/g/d/b;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/d/b;->b:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput p2, p0, Le/m/a/g/d/b;->a:I

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/g/d/b;->b:Lcom/google/android/material/bottomappbar/BottomAppBar;

    iget v1, p0, Le/m/a/g/d/b;->a:I

    .line 2
    sget v2, Lcom/google/android/material/bottomappbar/BottomAppBar;->l0:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->E(I)F

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    .line 5
    new-instance v0, Le/m/a/g/d/b$a;

    invoke-direct {v0, p0}, Le/m/a/g/d/b$a;-><init>(Le/m/a/g/d/b;)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->q(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;Z)V

    return-void
.end method
