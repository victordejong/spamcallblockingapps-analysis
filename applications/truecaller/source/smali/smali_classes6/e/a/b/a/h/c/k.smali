.class public final Le/a/b/a/h/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Lcom/truecaller/placepicker/data/GeocodedPlace;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/h/c/l;


# direct methods
.method public constructor <init>(Le/a/b/a/h/c/l;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/h/c/k;->a:Le/a/b/a/h/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/truecaller/placepicker/data/GeocodedPlace;

    .line 2
    iget-object v0, p0, Le/a/b/a/h/c/k;->a:Le/a/b/a/h/c/l;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/b/a/h/c/k;->a:Le/a/b/a/h/c/l;

    const-string v1, ""

    if-eqz p1, :cond_0

    .line 5
    iget-object v2, p1, Lcom/truecaller/placepicker/data/GeocodedPlace;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 6
    :goto_0
    invoke-virtual {v0, v2}, Le/a/b/a/h/c/l;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p1, Lcom/truecaller/placepicker/data/GeocodedPlace;->f:Ljava/lang/String;

    if-eqz p1, :cond_1

    move-object v1, p1

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Le/a/b/a/h/c/l;->h(Ljava/lang/String;)V

    return-void
.end method
