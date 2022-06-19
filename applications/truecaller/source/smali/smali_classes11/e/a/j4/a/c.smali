.class public Le/a/j4/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/os/AsyncTask;

.field public final synthetic c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(ZLandroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/j4/a/c;->a:Z

    iput-object p2, p0, Le/a/j4/a/c;->b:Landroid/os/AsyncTask;

    iput-object p3, p0, Le/a/j4/a/c;->c:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/j4/a/c;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/j4/a/c;->b:Landroid/os/AsyncTask;

    iget-object v1, p0, Le/a/j4/a/c;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Le/a/j4/a/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/j4/a/c;->b:Landroid/os/AsyncTask;

    iget-object v1, p0, Le/a/j4/a/c;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Le/a/j4/a/b;->b(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method
