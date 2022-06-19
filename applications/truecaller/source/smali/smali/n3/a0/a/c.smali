.class public Ln3/a0/a/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ln3/a0/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/a0/a/b$d;

.field public final synthetic b:Ln3/a0/a/b$b;


# direct methods
.method public constructor <init>(Ln3/a0/a/b$b;Ln3/a0/a/b$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/a0/a/c;->b:Ln3/a0/a/b$b;

    iput-object p2, p0, Ln3/a0/a/c;->a:Ln3/a0/a/b$d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Landroid/graphics/Bitmap;

    .line 2
    :try_start_0
    iget-object p1, p0, Ln3/a0/a/c;->b:Ln3/a0/a/b$b;

    invoke-virtual {p1}, Ln3/a0/a/b$b;->a()Ln3/a0/a/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ln3/a0/a/b;

    .line 2
    iget-object v0, p0, Ln3/a0/a/c;->a:Ln3/a0/a/b$d;

    check-cast v0, Ln3/y/e/h0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Ln3/a0/a/b;->e:Ln3/a0/a/b$e;

    if-eqz p1, :cond_0

    .line 5
    iget p1, p1, Ln3/a0/a/b$e;->d:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object v0, v0, Ln3/y/e/h0;->a:Ln3/y/e/f0;

    iget-object v0, v0, Ln3/y/e/f0;->i:Ln3/y/e/w;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method
