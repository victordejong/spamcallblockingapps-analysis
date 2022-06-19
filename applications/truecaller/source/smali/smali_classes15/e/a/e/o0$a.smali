.class public Le/a/e/o0$a;
.super Le/a/j4/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/o0;->b(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;ILjava/lang/Long;Le/a/e/o0$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z

.field public final synthetic i:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

.field public final synthetic j:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

.field public final synthetic k:Ljava/lang/Long;

.field public final synthetic l:I

.field public final synthetic m:Le/a/e/o0$b;

.field public final synthetic n:Le/a/e/o0;


# direct methods
.method public constructor <init>(Le/a/e/o0;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;ILe/a/e/o0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/o0$a;->n:Le/a/e/o0;

    iput-object p2, p0, Le/a/e/o0$a;->d:Ljava/util/List;

    iput-object p3, p0, Le/a/e/o0$a;->e:Ljava/lang/String;

    iput-object p4, p0, Le/a/e/o0$a;->f:Ljava/lang/String;

    iput-object p5, p0, Le/a/e/o0$a;->g:Ljava/lang/String;

    iput-boolean p6, p0, Le/a/e/o0$a;->h:Z

    iput-object p7, p0, Le/a/e/o0$a;->i:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iput-object p8, p0, Le/a/e/o0$a;->j:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    iput-object p9, p0, Le/a/e/o0$a;->k:Ljava/lang/Long;

    iput p10, p0, Le/a/e/o0$a;->l:I

    iput-object p11, p0, Le/a/e/o0$a;->m:Le/a/e/o0$b;

    invoke-direct {p0}, Le/a/j4/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/e/o0$a;->n:Le/a/e/o0;

    iget v0, p0, Le/a/e/o0$a;->l:I

    check-cast p1, Le/a/e/o0$c;

    .line 2
    iget-object p1, p1, Le/a/e/o0$c;->b:Le/a/e/x0;

    invoke-virtual {p1, v0}, Le/a/e/x0;->TA(I)V

    .line 3
    iget-object p1, p0, Le/a/e/o0$a;->n:Le/a/e/o0;

    check-cast p1, Le/a/e/o0$c;

    .line 4
    iget-object v0, p1, Le/a/e/o0$c;->b:Le/a/e/x0;

    invoke-virtual {v0}, Le/a/e/x0;->SA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Le/a/e/o0$c;->b:Le/a/e/x0;

    invoke-virtual {p1}, Le/a/e/x0;->OA()V

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/e/o0$a;->m:Le/a/e/o0$b;

    if-eqz p1, :cond_1

    .line 7
    check-cast p1, Le/a/e/c/w1;

    .line 8
    new-instance v0, Le/a/e/c/s1$q;

    iget-object v1, p1, Le/a/e/c/w1;->a:Le/a/e/c/s1;

    .line 9
    iget-object v2, v1, Le/a/e/c/s1;->F0:Lcom/truecaller/data/entity/Contact;

    .line 10
    new-instance v3, Le/a/e/c/t;

    invoke-direct {v3, p1}, Le/a/e/c/t;-><init>(Le/a/e/c/w1;)V

    invoke-direct {v0, v1, v2, v3}, Le/a/e/c/s1$q;-><init>(Le/a/e/c/s1;Lcom/truecaller/data/entity/Contact;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object p1, p0, Le/a/e/o0$a;->n:Le/a/e/o0;

    invoke-virtual {p1}, Le/a/e/o0;->c()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/e/o0$a;->n:Le/a/e/o0;

    iget-object v0, p1, Le/a/e/o0;->a:Le/a/h0/j;

    iget-object v1, p0, Le/a/e/o0$a;->d:Ljava/util/List;

    iget-object v2, p0, Le/a/e/o0$a;->e:Ljava/lang/String;

    iget-object v3, p0, Le/a/e/o0$a;->f:Ljava/lang/String;

    iget-object v4, p0, Le/a/e/o0$a;->g:Ljava/lang/String;

    iget-boolean v5, p0, Le/a/e/o0$a;->h:Z

    iget-object v6, p0, Le/a/e/o0$a;->i:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget-object v7, p0, Le/a/e/o0$a;->j:Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;

    iget-object v8, p0, Le/a/e/o0$a;->k:Ljava/lang/Long;

    .line 2
    invoke-interface/range {v0 .. v8}, Le/a/h0/j;->i(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/blocking/FiltersContract$Filters$WildCardType;Lcom/truecaller/blocking/FiltersContract$Filters$EntityType;Ljava/lang/Long;)I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/e/o0$a;->n:Le/a/e/o0;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
