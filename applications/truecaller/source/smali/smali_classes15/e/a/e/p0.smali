.class public Le/a/e/p0;
.super Le/a/j4/a/a;
.source "SourceFile"


# instance fields
.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Z

.field public final synthetic j:Le/a/e/o0;


# direct methods
.method public constructor <init>(Le/a/e/o0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/p0;->j:Le/a/e/o0;

    iput-object p2, p0, Le/a/e/p0;->d:Ljava/util/List;

    iput-object p3, p0, Le/a/e/p0;->e:Ljava/lang/String;

    iput-object p4, p0, Le/a/e/p0;->f:Ljava/lang/String;

    iput-object p5, p0, Le/a/e/p0;->g:Ljava/lang/String;

    iput-object p6, p0, Le/a/e/p0;->h:Ljava/lang/String;

    iput-boolean p7, p0, Le/a/e/p0;->i:Z

    invoke-direct {p0}, Le/a/j4/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/e/p0;->j:Le/a/e/o0;

    const v0, 0x7f120076

    check-cast p1, Le/a/e/o0$c;

    .line 3
    iget-object p1, p1, Le/a/e/o0$c;->b:Le/a/e/x0;

    invoke-virtual {p1, v0}, Le/a/e/x0;->TA(I)V

    .line 4
    iget-object p1, p0, Le/a/e/p0;->j:Le/a/e/o0;

    check-cast p1, Le/a/e/o0$c;

    .line 5
    iget-object v0, p1, Le/a/e/o0$c;->b:Le/a/e/x0;

    invoke-virtual {v0}, Le/a/e/x0;->SA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p1, Le/a/e/o0$c;->b:Le/a/e/x0;

    invoke-virtual {p1}, Le/a/e/x0;->OA()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Le/a/e/p0;->j:Le/a/e/o0;

    const v0, 0x7f120078

    check-cast p1, Le/a/e/o0$c;

    .line 8
    iget-object p1, p1, Le/a/e/o0$c;->b:Le/a/e/x0;

    invoke-virtual {p1, v0}, Le/a/e/x0;->TA(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object p1, p0, Le/a/e/p0;->j:Le/a/e/o0;

    invoke-virtual {p1}, Le/a/e/o0;->c()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/e/p0;->j:Le/a/e/o0;

    iget-object v0, p1, Le/a/e/o0;->a:Le/a/h0/j;

    iget-object v1, p0, Le/a/e/p0;->d:Ljava/util/List;

    iget-object v2, p0, Le/a/e/p0;->e:Ljava/lang/String;

    iget-object v3, p0, Le/a/e/p0;->f:Ljava/lang/String;

    iget-object v4, p0, Le/a/e/p0;->g:Ljava/lang/String;

    iget-object v5, p0, Le/a/e/p0;->h:Ljava/lang/String;

    iget-boolean v6, p0, Le/a/e/p0;->i:Z

    invoke-interface/range {v0 .. v6}, Le/a/h0/j;->b(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/e/p0;->j:Le/a/e/o0;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method
