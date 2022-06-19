.class public final Le/q/d/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/q/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static a:Le/q/d/e/d;

.field public static final b:Le/q/d/b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    sget-object v0, Le/q/d/b;->a:Le/q/d/b;

    .line 2
    new-instance v1, Le/q/d/e/d;

    invoke-direct {v1}, Le/q/d/e/d;-><init>()V

    .line 3
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    const-string v3, "FSA_MONTHS"

    .line 4
    invoke-static {v2, v3}, Le/d/c/a/a;->V0(Ljava/util/Map;Ljava/lang/String;)V

    .line 5
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    const-string v4, "FSA_DAYS"

    .line 6
    invoke-static {v2, v4}, Le/d/c/a/a;->V0(Ljava/util/Map;Ljava/lang/String;)V

    .line 7
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    const-string v5, "FSA_TIMEPRFX"

    .line 8
    invoke-static {v2, v5}, Le/d/c/a/a;->V0(Ljava/util/Map;Ljava/lang/String;)V

    .line 9
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    const-string v6, "FSA_AMT"

    .line 10
    invoke-static {v2, v6}, Le/d/c/a/a;->V0(Ljava/util/Map;Ljava/lang/String;)V

    .line 11
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    const-string v7, "FSA_TIMES"

    .line 12
    invoke-static {v2, v7}, Le/d/c/a/a;->V0(Ljava/util/Map;Ljava/lang/String;)V

    .line 13
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    const-string v8, "FSA_TZ"

    .line 14
    invoke-static {v2, v8}, Le/d/c/a/a;->V0(Ljava/util/Map;Ljava/lang/String;)V

    .line 15
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    const-string v9, "FSA_DAYSFFX"

    .line 16
    invoke-static {v2, v9}, Le/d/c/a/a;->V0(Ljava/util/Map;Ljava/lang/String;)V

    .line 17
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    const-string v10, "FSA_UPI"

    .line 18
    invoke-static {v2, v10}, Le/d/c/a/a;->V0(Ljava/util/Map;Ljava/lang/String;)V

    .line 19
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    .line 20
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/d/e/a;

    const-string v3, "jan;uary,feb;ruary,mar;ch,apr;il,may,jun;e,jul;y,aug;ust,sep;t;ember,oct;ober,nov;ember,dec;ember"

    invoke-virtual {v0, v3, v2}, Le/q/d/b;->g(Ljava/lang/String;Le/q/d/e/a;)V

    .line 21
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    .line 22
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/d/e/a;

    const-string v3, "sun;day,mon;day,tue;sday,wed;nesday,thu;rsday,thur;sday,fri;day,sat;urday"

    invoke-virtual {v0, v3, v2}, Le/q/d/b;->g(Ljava/lang/String;Le/q/d/e/a;)V

    .line 23
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    .line 24
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/d/e/a;

    const-string v3, "at,on,before,by"

    invoke-virtual {v0, v3, v2}, Le/q/d/b;->g(Ljava/lang/String;Le/q/d/e/a;)V

    .line 25
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    .line 26
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/d/e/a;

    const-string v3, "lac,lakh,k"

    invoke-virtual {v0, v3, v2}, Le/q/d/b;->g(Ljava/lang/String;Le/q/d/e/a;)V

    .line 27
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    .line 28
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/d/e/a;

    const-string v3, "hours,hrs,hr,mins,minutes"

    invoke-virtual {v0, v3, v2}, Le/q/d/b;->g(Ljava/lang/String;Le/q/d/e/a;)V

    .line 29
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    .line 30
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/d/e/a;

    const-string v3, "gmt,ist"

    invoke-virtual {v0, v3, v2}, Le/q/d/b;->g(Ljava/lang/String;Le/q/d/e/a;)V

    .line 31
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    .line 32
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/d/e/a;

    const-string v3, "st,nd,rd,th"

    invoke-virtual {v0, v3, v2}, Le/q/d/b;->g(Ljava/lang/String;Le/q/d/e/a;)V

    .line 33
    iget-object v2, v1, Le/q/d/e/d;->a:Ljava/util/Map;

    .line 34
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/q/d/e/a;

    const-string v3, "UPI,MMT,NEFT"

    invoke-virtual {v0, v3, v2}, Le/q/d/b;->g(Ljava/lang/String;Le/q/d/e/a;)V

    .line 35
    sput-object v1, Le/q/d/b$b;->a:Le/q/d/e/d;

    return-void
.end method
