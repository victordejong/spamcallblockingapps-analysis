.class public final Le/a/i/e/g/a/f/b/b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/g/a/f/b/b;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/i/e/g/a/f/b/b;


# direct methods
.method public constructor <init>(Le/a/i/e/g/a/f/b/b;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/g/a/f/b/b$a;->b:Le/a/i/e/g/a/f/b/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/e/g/a/f/b/b$a;->b:Le/a/i/e/g/a/f/b/b;

    .line 2
    iget-object v1, v0, Le/a/i/e/g/a/f/b/b;->e:Le/a/i/e/g/a/f/b/e;

    .line 3
    iget-object v0, v0, Le/a/i/e/g/a/f/b/b;->d:Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent;

    .line 4
    iget-object v0, v0, Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent;->d:Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent$OnClick;

    .line 5
    invoke-interface {v1, v0}, Le/a/i/e/g/a/f/b/e;->fw(Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent$OnClick;)V

    .line 6
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
