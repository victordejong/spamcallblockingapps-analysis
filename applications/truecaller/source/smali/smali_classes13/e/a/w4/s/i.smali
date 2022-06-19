.class public final synthetic Le/a/w4/s/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o2/l;


# instance fields
.field public final synthetic a:Le/a/w4/s/c0;


# direct methods
.method public synthetic constructor <init>(Le/a/w4/s/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/w4/s/i;->a:Le/a/w4/s/c0;

    return-void
.end method


# virtual methods
.method public final v(Le/a/o2/h;)Z
    .locals 10

    iget-object v0, p0, Le/a/w4/s/i;->a:Le/a/w4/s/c0;

    .line 1
    sget v1, Le/a/w4/s/c0;->x:I

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v2, "Call"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object p1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    .line 6
    move-object v2, p1

    check-cast v2, Lcom/truecaller/data/entity/Contact;

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "globalSearchHistory"

    invoke-static/range {v1 .. v9}, Le/a/h/s0/c;->SA(Ln3/r/a/l;Lcom/truecaller/data/entity/Contact;Ljava/util/List;ZZZZZLjava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
