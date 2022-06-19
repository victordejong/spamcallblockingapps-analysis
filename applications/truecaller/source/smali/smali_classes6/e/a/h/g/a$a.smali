.class public final Le/a/h/g/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/g/a;-><init>(Landroid/view/View;Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;Le/a/k0/n/e/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/h/g/a$a;->b:I

    iput-object p2, p0, Le/a/h/g/a$a;->c:Ljava/lang/Object;

    iput-object p3, p0, Le/a/h/g/a$a;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/h/g/a$a;->b:I

    const-string v2, "it"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1
    move-object v7, p1

    check-cast v7, Landroid/view/View;

    .line 2
    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/h/g/a$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/h/g/a;

    .line 4
    iget-object p1, p1, Le/a/h/g/a;->h:Le/a/o2/m;

    .line 5
    new-instance v1, Le/a/o2/h;

    sget-object v2, Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;->SHOW_CALL_RECORDING_MENU_OPTIONS:Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;

    invoke-virtual {v2}, Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;->getEventAction()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Le/a/h/g/a$a;->d:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Le/a/h/g/a;

    const/4 v8, 0x0

    const/16 v9, 0x8

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p1, v1}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1

    .line 7
    :cond_1
    check-cast p1, Landroid/view/View;

    .line 8
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Le/a/h/g/a$a;->c:Ljava/lang/Object;

    check-cast p1, Le/a/h/g/a;

    iget-object v1, p0, Le/a/h/g/a$a;->d:Ljava/lang/Object;

    check-cast v1, Le/a/h/g/a;

    invoke-static {p1, v1}, Le/a/h/g/a;->N4(Le/a/h/g/a;Le/a/h/g/a;)V

    return-object v0
.end method
