.class public final Le/a/j/a/f/a$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/f/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/view/animation/Animation;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/j/a/f/a;


# direct methods
.method public constructor <init>(Le/a/j/a/f/a;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/f/a$e;->b:Le/a/j/a/f/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/j/a/f/a$e;->b:Le/a/j/a/f/a;

    invoke-virtual {v0}, Le/a/j/a/f/e;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/surveys/R$anim;->fade_in_400:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method
