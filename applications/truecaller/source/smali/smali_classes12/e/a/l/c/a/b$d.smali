.class public final Le/a/l/c/a/b$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/a/b;-><init>(Landroid/view/View;Le/a/o2/m;Landroidx/fragment/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/ghost_call/ScheduleDuration;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/c/a/b;


# direct methods
.method public constructor <init>(Le/a/l/c/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/a/b$d;->b:Le/a/l/c/a/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/truecaller/ghost_call/ScheduleDuration;

    const-string v0, "scheduled"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/l/c/a/b$d;->b:Le/a/l/c/a/b;

    .line 4
    iget-object v1, v0, Le/a/l/c/a/b;->p:Le/a/o2/m;

    .line 5
    new-instance v2, Le/a/o2/h;

    .line 6
    iget-object v3, v0, Le/a/l/c/a/b;->g:Landroid/widget/EditText;

    const-string v4, "durationPicker"

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "ItemEvent.DURATION_CHANGED"

    invoke-direct {v2, v4, v0, v3, p1}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    .line 8
    iget-object v0, p0, Le/a/l/c/a/b$d;->b:Le/a/l/c/a/b;

    invoke-virtual {v0, p1}, Le/a/l/c/a/b;->D4(Lcom/truecaller/ghost_call/ScheduleDuration;)V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
