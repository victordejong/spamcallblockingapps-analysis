.class public Lcom/google/firebase/inappmessaging/display/internal/r/b/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/app/Application;Lcom/google/firebase/inappmessaging/display/internal/l;)Lcom/squareup/picasso/Picasso;
    .locals 2

    .line 1
    new-instance v0, Lm/c0$a;

    invoke-direct {v0}, Lm/c0$a;-><init>()V

    new-instance v1, Lcom/google/firebase/inappmessaging/display/internal/r/b/s$a;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/display/internal/r/b/s$a;-><init>(Lcom/google/firebase/inappmessaging/display/internal/r/b/s;)V

    .line 2
    invoke-virtual {v0, v1}, Lm/c0$a;->a(Lm/z;)Lm/c0$a;

    .line 3
    invoke-virtual {v0}, Lm/c0$a;->c()Lm/c0;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/squareup/picasso/Picasso$b;

    invoke-direct {v1, p1}, Lcom/squareup/picasso/Picasso$b;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v1, p2}, Lcom/squareup/picasso/Picasso$b;->e(Lcom/squareup/picasso/Picasso$d;)Lcom/squareup/picasso/Picasso$b;

    new-instance p1, Lcom/squareup/picasso/s;

    invoke-direct {p1, v0}, Lcom/squareup/picasso/s;-><init>(Lm/c0;)V

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso$b;->c(Lcom/squareup/picasso/j;)Lcom/squareup/picasso/Picasso$b;

    .line 6
    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso$b;->a()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    return-object p1
.end method
