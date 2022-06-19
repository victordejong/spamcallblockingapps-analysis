.class public final Le/a/n/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/e/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/e/p<",
        "Lcom/truecaller/backup/BackupSettingItem<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/m/e/q;Ljava/lang/reflect/Type;Le/m/e/o;)Ljava/lang/Object;
    .locals 4

    const-string v0, "jsonElement"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "deserializationContext"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Le/m/e/q;->d()Le/m/e/t;

    move-result-object p1

    .line 3
    iget-object p2, p1, Le/m/e/t;->a:Le/m/e/e0/s;

    const-string v0, "key"

    .line 4
    invoke-virtual {p2, v0}, Le/m/e/e0/s;->g(Ljava/lang/Object;)Le/m/e/e0/s$e;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p2, Le/m/e/e0/s$e;->g:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 6
    :goto_0
    check-cast p2, Le/m/e/w;

    const-string v2, "jsonObject.getAsJsonPrimitive(\"key\")"

    .line 7
    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Le/m/e/w;->g()Ljava/lang/String;

    move-result-object p2

    const-string v2, "value"

    .line 8
    invoke-virtual {p1, v2}, Le/m/e/t;->l(Ljava/lang/String;)Le/m/e/q;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    instance-of v2, p1, Le/m/e/w;

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {p1}, Le/m/e/q;->e()Le/m/e/w;

    move-result-object v2

    const-string v3, "primitiveValueJsonObject"

    .line 11
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v3, v2, Le/m/e/w;->a:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const p3, 0x103dc7cf

    if-eq p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "key_backup_frequency_hours"

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/truecaller/backup/BackupSettingItem;

    invoke-virtual {v2}, Le/m/e/w;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/truecaller/backup/BackupSettingItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 15
    :cond_3
    :goto_1
    new-instance p1, Lcom/truecaller/backup/BackupSettingItem;

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Le/m/e/w;->b()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/truecaller/backup/BackupSettingItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 16
    :cond_4
    new-instance v2, Lcom/truecaller/backup/BackupSettingItem;

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    check-cast p3, Le/m/e/e0/a0/m$b;

    .line 17
    iget-object p3, p3, Le/m/e/e0/a0/m$b;->a:Le/m/e/e0/a0/m;

    iget-object p3, p3, Le/m/e/e0/a0/m;->c:Le/m/e/k;

    .line 18
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    new-instance v1, Le/m/e/e0/a0/e;

    invoke-direct {v1, p1}, Le/m/e/e0/a0/e;-><init>(Le/m/e/q;)V

    invoke-virtual {p3, v1, v0}, Le/m/e/k;->c(Le/m/e/g0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 20
    :goto_2
    invoke-direct {v2, p2, v1}, Lcom/truecaller/backup/BackupSettingItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object p1, v2

    :goto_3
    return-object p1
.end method
