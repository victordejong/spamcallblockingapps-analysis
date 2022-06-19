.class public final Le/a/y4/g/g$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y4/g/g;->a([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/database/Cursor;",
        "Ls1/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/y4/g/g$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/y4/g/g$c;

    invoke-direct {v0}, Le/a/y4/g/g$c;-><init>()V

    sput-object v0, Le/a/y4/g/g$c;->b:Le/a/y4/g/g$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Landroid/database/Cursor;

    const-string v0, "cursor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/k3/j/d;

    invoke-direct {v0, p1}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;)V

    .line 4
    iget v1, v0, Le/a/k3/j/d;->D:I

    invoke-virtual {v0, p1, v1}, Le/a/k3/j/a;->d(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v1

    .line 5
    iget v2, v0, Le/a/k3/j/d;->x:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    goto/16 :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, v2}, Le/a/k3/j/a;->e(Landroid/database/Cursor;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 7
    :pswitch_1
    iget-object v2, v0, Le/a/k3/j/d;->W:Le/a/k3/j/d$m;

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Le/a/k3/j/d$m;

    invoke-direct {v2, p1}, Le/a/k3/j/d$m;-><init>(Landroid/database/Cursor;)V

    iput-object v2, v0, Le/a/k3/j/d;->W:Le/a/k3/j/d$m;

    .line 9
    :cond_1
    iget-object v0, v0, Le/a/k3/j/d;->W:Le/a/k3/j/d$m;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$m;->h(Landroid/database/Cursor;)Lcom/truecaller/data/entity/ContactSurvey;

    move-result-object p1

    goto/16 :goto_1

    .line 10
    :pswitch_2
    iget-object v2, v0, Le/a/k3/j/d;->V:Le/a/k3/j/d$h;

    if-nez v2, :cond_2

    .line 11
    new-instance v2, Le/a/k3/j/d$h;

    iget-object v3, v0, Le/a/k3/j/d;->Y:Le/a/k3/l/j;

    invoke-direct {v2, p1, v3}, Le/a/k3/j/d$h;-><init>(Landroid/database/Cursor;Le/a/k3/l/j;)V

    iput-object v2, v0, Le/a/k3/j/d;->V:Le/a/k3/j/d$h;

    .line 12
    :cond_2
    iget-object v0, v0, Le/a/k3/j/d;->V:Le/a/k3/j/d$h;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    goto/16 :goto_1

    .line 13
    :pswitch_3
    iget-object v2, v0, Le/a/k3/j/d;->U:Le/a/k3/j/d$j;

    if-nez v2, :cond_3

    .line 14
    new-instance v2, Le/a/k3/j/d$j;

    iget-object v3, v0, Le/a/k3/j/d;->X:Le/a/k3/c;

    invoke-direct {v2, p1, v3}, Le/a/k3/j/d$j;-><init>(Landroid/database/Cursor;Le/a/k3/c;)V

    iput-object v2, v0, Le/a/k3/j/d;->U:Le/a/k3/j/d$j;

    .line 15
    :cond_3
    iget-object v0, v0, Le/a/k3/j/d;->U:Le/a/k3/j/d$j;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    goto/16 :goto_1

    .line 16
    :pswitch_4
    iget-object v2, v0, Le/a/k3/j/d;->T:Le/a/k3/j/d$e;

    if-nez v2, :cond_4

    .line 17
    new-instance v2, Le/a/k3/j/d$e;

    invoke-direct {v2, p1}, Le/a/k3/j/d$e;-><init>(Landroid/database/Cursor;)V

    iput-object v2, v0, Le/a/k3/j/d;->T:Le/a/k3/j/d$e;

    .line 18
    :cond_4
    iget-object v0, v0, Le/a/k3/j/d;->T:Le/a/k3/j/d$e;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    goto/16 :goto_1

    .line 19
    :pswitch_5
    iget-object v2, v0, Le/a/k3/j/d;->S:Le/a/k3/j/d$l;

    if-nez v2, :cond_5

    .line 20
    new-instance v2, Le/a/k3/j/d$l;

    invoke-direct {v2, p1}, Le/a/k3/j/d$l;-><init>(Landroid/database/Cursor;)V

    iput-object v2, v0, Le/a/k3/j/d;->S:Le/a/k3/j/d$l;

    .line 21
    :cond_5
    iget-object v0, v0, Le/a/k3/j/d;->S:Le/a/k3/j/d$l;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    goto/16 :goto_1

    .line 22
    :pswitch_6
    iget-object v2, v0, Le/a/k3/j/d;->R:Le/a/k3/j/d$b;

    if-nez v2, :cond_6

    .line 23
    new-instance v2, Le/a/k3/j/d$b;

    invoke-direct {v2, p1}, Le/a/k3/j/d$b;-><init>(Landroid/database/Cursor;)V

    iput-object v2, v0, Le/a/k3/j/d;->R:Le/a/k3/j/d$b;

    .line 24
    :cond_6
    iget-object v0, v0, Le/a/k3/j/d;->R:Le/a/k3/j/d$b;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    goto/16 :goto_1

    .line 25
    :pswitch_7
    iget-object v2, v0, Le/a/k3/j/d;->Q:Le/a/k3/j/d$f;

    if-nez v2, :cond_7

    .line 26
    new-instance v2, Le/a/k3/j/d$f;

    invoke-direct {v2, p1}, Le/a/k3/j/d$f;-><init>(Landroid/database/Cursor;)V

    iput-object v2, v0, Le/a/k3/j/d;->Q:Le/a/k3/j/d$f;

    .line 27
    :cond_7
    iget-object v0, v0, Le/a/k3/j/d;->Q:Le/a/k3/j/d$f;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    goto/16 :goto_1

    .line 28
    :pswitch_8
    iget-object v2, v0, Le/a/k3/j/d;->P:Le/a/k3/j/d$k;

    if-nez v2, :cond_8

    .line 29
    new-instance v2, Le/a/k3/j/d$k;

    invoke-direct {v2, p1}, Le/a/k3/j/d$k;-><init>(Landroid/database/Cursor;)V

    iput-object v2, v0, Le/a/k3/j/d;->P:Le/a/k3/j/d$k;

    .line 30
    :cond_8
    iget-object v0, v0, Le/a/k3/j/d;->P:Le/a/k3/j/d$k;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    goto :goto_1

    .line 31
    :pswitch_9
    iget-object v2, v0, Le/a/k3/j/d;->L:Le/a/k3/j/d$n;

    if-nez v2, :cond_9

    .line 32
    new-instance v2, Le/a/k3/j/d$n;

    invoke-direct {v2, p1}, Le/a/k3/j/d$n;-><init>(Landroid/database/Cursor;)V

    iput-object v2, v0, Le/a/k3/j/d;->L:Le/a/k3/j/d$n;

    .line 33
    :cond_9
    iget-object v0, v0, Le/a/k3/j/d;->L:Le/a/k3/j/d$n;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    goto :goto_1

    .line 34
    :pswitch_a
    iget-object v2, v0, Le/a/k3/j/d;->O:Le/a/k3/j/d$i;

    if-nez v2, :cond_a

    .line 35
    new-instance v2, Le/a/k3/j/d$i;

    invoke-direct {v2, p1}, Le/a/k3/j/d$i;-><init>(Landroid/database/Cursor;)V

    iput-object v2, v0, Le/a/k3/j/d;->O:Le/a/k3/j/d$i;

    .line 36
    :cond_a
    iget-object v0, v0, Le/a/k3/j/d;->O:Le/a/k3/j/d$i;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    goto :goto_1

    .line 37
    :pswitch_b
    iget-object v2, v0, Le/a/k3/j/d;->M:Le/a/k3/j/d$g;

    if-nez v2, :cond_b

    .line 38
    new-instance v2, Le/a/k3/j/d$g;

    invoke-direct {v2, p1}, Le/a/k3/j/d$g;-><init>(Landroid/database/Cursor;)V

    iput-object v2, v0, Le/a/k3/j/d;->M:Le/a/k3/j/d$g;

    .line 39
    :cond_b
    iget-object v0, v0, Le/a/k3/j/d;->M:Le/a/k3/j/d$g;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    goto :goto_1

    .line 40
    :pswitch_c
    iget-object v2, v0, Le/a/k3/j/d;->N:Le/a/k3/j/d$d;

    if-nez v2, :cond_c

    .line 41
    new-instance v2, Le/a/k3/j/d$d;

    invoke-direct {v2, p1}, Le/a/k3/j/d$d;-><init>(Landroid/database/Cursor;)V

    iput-object v2, v0, Le/a/k3/j/d;->N:Le/a/k3/j/d$d;

    .line 42
    :cond_c
    iget-object v0, v0, Le/a/k3/j/d;->N:Le/a/k3/j/d$d;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    goto :goto_1

    .line 43
    :pswitch_d
    iget-object v2, v0, Le/a/k3/j/d;->K:Le/a/k3/j/d$a;

    if-nez v2, :cond_d

    .line 44
    new-instance v2, Le/a/k3/j/d$a;

    invoke-direct {v2, p1}, Le/a/k3/j/d$a;-><init>(Landroid/database/Cursor;)V

    iput-object v2, v0, Le/a/k3/j/d;->K:Le/a/k3/j/d$a;

    .line 45
    :cond_d
    iget-object v0, v0, Le/a/k3/j/d;->K:Le/a/k3/j/d$a;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    goto :goto_1

    :goto_0
    move-object p1, v4

    :goto_1
    if-eqz v1, :cond_e

    if-eqz p1, :cond_e

    .line 46
    new-instance v0, Ls1/o;

    invoke-direct {v0, v1, p1, v4}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v0

    :cond_e
    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
