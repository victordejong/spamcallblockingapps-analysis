.class Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static final e:Lg/f/a/e/c0/c;


# instance fields
.field a:Lg/f/a/e/c0/c;

.field b:Lg/f/a/e/c0/c;

.field c:Lg/f/a/e/c0/c;

.field d:Lg/f/a/e/c0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/f/a/e/c0/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/f/a/e/c0/a;-><init>(F)V

    sput-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->e:Lg/f/a/e/c0/c;

    return-void
.end method

.method constructor <init>(Lg/f/a/e/c0/c;Lg/f/a/e/c0/c;Lg/f/a/e/c0/c;Lg/f/a/e/c0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->a:Lg/f/a/e/c0/c;

    .line 3
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->b:Lg/f/a/e/c0/c;

    .line 4
    iput-object p4, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->c:Lg/f/a/e/c0/c;

    .line 5
    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->d:Lg/f/a/e/c0/c;

    return-void
.end method

.method public static a(Lcom/google/android/material/button/MaterialButtonToggleGroup$d;)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;

    sget-object v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->e:Lg/f/a/e/c0/c;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->d:Lg/f/a/e/c0/c;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->c:Lg/f/a/e/c0/c;

    invoke-direct {v0, v1, v2, v1, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;-><init>(Lg/f/a/e/c0/c;Lg/f/a/e/c0/c;Lg/f/a/e/c0/c;Lg/f/a/e/c0/c;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/material/button/MaterialButtonToggleGroup$d;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/internal/k;->d(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->c(Lcom/google/android/material/button/MaterialButtonToggleGroup$d;)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->d(Lcom/google/android/material/button/MaterialButtonToggleGroup$d;)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c(Lcom/google/android/material/button/MaterialButtonToggleGroup$d;)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->a:Lg/f/a/e/c0/c;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->d:Lg/f/a/e/c0/c;

    sget-object v2, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->e:Lg/f/a/e/c0/c;

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;-><init>(Lg/f/a/e/c0/c;Lg/f/a/e/c0/c;Lg/f/a/e/c0/c;Lg/f/a/e/c0/c;)V

    return-object v0
.end method

.method public static d(Lcom/google/android/material/button/MaterialButtonToggleGroup$d;)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;

    sget-object v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->e:Lg/f/a/e/c0/c;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->b:Lg/f/a/e/c0/c;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->c:Lg/f/a/e/c0/c;

    invoke-direct {v0, v1, v1, v2, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;-><init>(Lg/f/a/e/c0/c;Lg/f/a/e/c0/c;Lg/f/a/e/c0/c;Lg/f/a/e/c0/c;)V

    return-object v0
.end method

.method public static e(Lcom/google/android/material/button/MaterialButtonToggleGroup$d;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/internal/k;->d(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->d(Lcom/google/android/material/button/MaterialButtonToggleGroup$d;)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->c(Lcom/google/android/material/button/MaterialButtonToggleGroup$d;)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static f(Lcom/google/android/material/button/MaterialButtonToggleGroup$d;)Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->a:Lg/f/a/e/c0/c;

    sget-object v2, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->e:Lg/f/a/e/c0/c;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->b:Lg/f/a/e/c0/c;

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;-><init>(Lg/f/a/e/c0/c;Lg/f/a/e/c0/c;Lg/f/a/e/c0/c;Lg/f/a/e/c0/c;)V

    return-object v0
.end method
