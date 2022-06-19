.class public Le/q/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Le/q/g/c/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Le/q/g/c/d;

    invoke-direct {v0}, Le/q/g/c/d;-><init>()V

    .line 2
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    const-string v2, "FSA_MONTHS"

    invoke-static {v1, v2}, Le/d/c/a/a;->W0(Ljava/util/Map;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    const-string v3, "FSA_DAYS"

    invoke-static {v1, v3}, Le/d/c/a/a;->W0(Ljava/util/Map;Ljava/lang/String;)V

    .line 4
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    const-string v4, "FSA_TIMEPRFX"

    invoke-static {v1, v4}, Le/d/c/a/a;->W0(Ljava/util/Map;Ljava/lang/String;)V

    .line 5
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    const-string v5, "FSA_AMT"

    invoke-static {v1, v5}, Le/d/c/a/a;->W0(Ljava/util/Map;Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    const-string v6, "FSA_TIMES"

    invoke-static {v1, v6}, Le/d/c/a/a;->W0(Ljava/util/Map;Ljava/lang/String;)V

    .line 7
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    const-string v7, "FSA_TZ"

    invoke-static {v1, v7}, Le/d/c/a/a;->W0(Ljava/util/Map;Ljava/lang/String;)V

    .line 8
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    const-string v8, "FSA_DAYSFFX"

    invoke-static {v1, v8}, Le/d/c/a/a;->W0(Ljava/util/Map;Ljava/lang/String;)V

    .line 9
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    const-string v9, "FSA_UPI"

    invoke-static {v1, v9}, Le/d/c/a/a;->W0(Ljava/util/Map;Ljava/lang/String;)V

    .line 10
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/q/g/c/a;

    const-string v2, "jan;uary,feb;r;uary,mar;ch,apr;il,may,jun;e,jul;y,aug;ust,sep;t;ember,oct;ober,nov;ember,dec;ember"

    invoke-static {v2, v1}, Le/q/f/a/d/a;->M2(Ljava/lang/String;Le/q/g/c/a;)V

    .line 11
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/q/g/c/a;

    const-string v2, "sun;day,mon;day,tue;sday,wed;nesday,thu;rsday,thur;sday,fri;day,sat;urday"

    invoke-static {v2, v1}, Le/q/f/a/d/a;->M2(Ljava/lang/String;Le/q/g/c/a;)V

    .line 12
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/q/g/c/a;

    const-string v2, "at,on,before,by"

    invoke-static {v2, v1}, Le/q/f/a/d/a;->M2(Ljava/lang/String;Le/q/g/c/a;)V

    .line 13
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/q/g/c/a;

    const-string v2, "lac,lakh,k"

    invoke-static {v2, v1}, Le/q/f/a/d/a;->M2(Ljava/lang/String;Le/q/g/c/a;)V

    .line 14
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/q/g/c/a;

    const-string v2, "hours,hrs,hr,mins,minutes"

    invoke-static {v2, v1}, Le/q/f/a/d/a;->M2(Ljava/lang/String;Le/q/g/c/a;)V

    .line 15
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/q/g/c/a;

    const-string v2, "gmt,ist"

    invoke-static {v2, v1}, Le/q/f/a/d/a;->M2(Ljava/lang/String;Le/q/g/c/a;)V

    .line 16
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/q/g/c/a;

    const-string v2, "st,nd,rd,th"

    invoke-static {v2, v1}, Le/q/f/a/d/a;->M2(Ljava/lang/String;Le/q/g/c/a;)V

    .line 17
    iget-object v1, v0, Le/q/g/c/d;->a:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/q/g/c/a;

    const-string v2, "UPI,MMT,NEFT"

    invoke-static {v2, v1}, Le/q/f/a/d/a;->M2(Ljava/lang/String;Le/q/g/c/a;)V

    .line 18
    sput-object v0, Le/q/g/b;->a:Le/q/g/c/d;

    return-void
.end method
