.class public Le/a/k4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/k4/b;


# direct methods
.method public constructor <init>(Le/a/k4/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/k4/a;->a:Le/a/k4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/k4/a;->a:Le/a/k4/b;

    .line 2
    iget-boolean v0, p1, Le/a/k4/b;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/k4/b;->c:Z

    .line 4
    invoke-virtual {p1}, Le/a/k4/b;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k4/d;

    check-cast p1, Lcom/truecaller/placepicker/PlacePickerActivity;

    invoke-interface {v0, p1}, Le/a/k4/d;->S(Lcom/truecaller/placepicker/PlacePickerActivity;)V

    :cond_0
    return-void
.end method
