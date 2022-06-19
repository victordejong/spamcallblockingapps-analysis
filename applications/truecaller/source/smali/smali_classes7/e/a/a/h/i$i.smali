.class public final Le/a/a/h/i$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h/i;->ih(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h/i;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Le/a/a/h/i;I)V
    .locals 0

    iput-object p1, p0, Le/a/a/h/i$i;->a:Le/a/a/h/i;

    iput p2, p0, Le/a/a/h/i$i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 13

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-static {p1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Le/a/a/h/i$i;->a:Le/a/a/h/i;

    iget v0, p0, Le/a/a/h/i$i;->b:I

    .line 4
    iget-object v1, p1, Le/a/a/h/i;->p:Le/a/q2/a;

    const-string v2, "ImGroupMute"

    const-string v3, "type"

    .line 5
    invoke-static {v2, v3}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 6
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v9, "isMuted"

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const-string v0, "false"

    goto :goto_0

    :cond_0
    const-string v0, "mentionOnly"

    goto :goto_0

    :cond_1
    const-string v0, "true"

    :goto_0
    move-object v10, v0

    const-string v0, "name"

    const-string v12, "value"

    move-object v4, v9

    move-object v5, v0

    move-object v6, v10

    move-object v7, v12

    move-object v8, v3

    .line 7
    invoke-static/range {v4 .. v10}, Le/d/c/a/a;->K0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "numMembers"

    .line 8
    iget-object p1, p1, Le/a/a/h/i;->e:Le/a/a/k/a/a/o;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p1

    invoke-virtual {p1, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {p1, v11}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p1, v3}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    const-string v0, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v1, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_2

    .line 13
    :cond_3
    iget-object p1, p0, Le/a/a/h/i$i;->a:Le/a/a/h/i;

    .line 14
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/h/h;

    if-eqz p1, :cond_4

    const v0, 0x7f12027f

    .line 15
    invoke-interface {p1, v0}, Le/a/a/h/h;->a(I)V

    .line 16
    :cond_4
    iget-object p1, p0, Le/a/a/h/i$i;->a:Le/a/a/h/i;

    .line 17
    invoke-virtual {p1}, Le/a/a/h/i;->Jj()V

    :goto_2
    return-void
.end method
