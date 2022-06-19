.class public final Le/a/j/a/a/a/c/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/a/a/c/c;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/j/a/a/a/c/c;


# direct methods
.method public constructor <init>(Le/a/j/a/a/a/c/c;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/a/a/c/c$a;->a:Le/a/j/a/a/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/j/a/a/a/c/c$a;->a:Le/a/j/a/a/a/c/c;

    iget-object v1, v0, Le/a/j/a/a/a/c/c;->b:Le/a/j/a/a/a/c/a$e$b;

    iget-object v1, v1, Le/a/j/a/a/a/c/a$e$b;->b:Le/a/j/a/a/a/c/a$e;

    .line 2
    iget-object v1, v1, Le/a/j/a/a/a/c/a$e;->c:Ls1/z/b/l;

    .line 3
    iget-object v2, v0, Le/a/j/a/a/a/c/c;->c:Le/a/j/a/a/a/c/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, v0, Le/a/j/a/a/a/c/c;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTextSize()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x7

    invoke-static/range {v2 .. v7}, Le/a/j/a/a/a/c/f;->a(Le/a/j/a/a/a/c/f;Lcom/truecaller/surveys/data/entities/Choice;Ljava/util/UUID;ZLjava/lang/Float;I)Le/a/j/a/a/a/c/f;

    move-result-object v0

    invoke-interface {v1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
