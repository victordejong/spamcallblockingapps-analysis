.class public final Le/a/o5/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Le/m/f/a/o;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/lang/String;

.field public static final c:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/o5/e1$a;

    invoke-direct {v0}, Le/a/o5/e1$a;-><init>()V

    sput-object v0, Le/a/o5/e1;->a:Ljava/lang/ThreadLocal;

    const-string v0, ""

    .line 2
    sput-object v0, Le/a/o5/e1;->b:Ljava/lang/String;

    const-string v0, "[+0-9.\\p{Space}()\\p{Pd}*#]*[0-9*#][+0-9.\\p{Space}()\\p{Pd}*#,;]*"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/a/o5/e1;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_c

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_2

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_2
    const/16 v5, 0x2c

    if-eq v4, v5, :cond_a

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_a

    const/16 v5, 0x23

    if-ne v4, v5, :cond_3

    goto :goto_4

    :cond_3
    const/16 v5, 0x61

    if-lt v4, v5, :cond_4

    const/16 v5, 0x7a

    if-le v4, v5, :cond_5

    :cond_4
    const/16 v5, 0x41

    if-lt v4, v5, :cond_b

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_b

    :cond_5
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 10
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_1
    if-ge v2, v1, :cond_9

    .line 11
    aget-char v3, p0, v2

    .line 12
    sget-object v4, Le/a/b4/a/c;->d:Ljava/util/Map;

    const-string v4, "context"

    .line 13
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v4, Le/a/b4/a/c;->g:Le/a/b4/a/c;

    if-nez v4, :cond_8

    .line 15
    const-class v4, Le/a/b4/a/c;

    invoke-static {v4}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v4

    monitor-enter v4

    .line 16
    :try_start_0
    sget-object v5, Le/a/b4/a/c;->g:Le/a/b4/a/c;

    if-nez v5, :cond_7

    const/4 v5, 0x1

    .line 17
    invoke-static {v0, v5}, Le/a/c/p/a;->I(Ls1/z/b/a;I)Le/a/b4/a/c;

    move-result-object v5

    .line 18
    sput-object v5, Le/a/b4/a/c;->g:Le/a/b4/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_7
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    .line 20
    :cond_8
    :goto_2
    sget-object v4, Le/a/b4/a/c;->g:Le/a/b4/a/c;

    .line 21
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v4, v3}, Le/a/b4/a/c;->d(C)C

    move-result v3

    aput-char v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23
    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    move-object p0, v0

    .line 24
    :goto_3
    invoke-static {p0, p1}, Le/a/o5/e1;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :cond_a
    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 26
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Le/a/o5/e1;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Le/a/b0/q/c0;->e(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/j2;->m()Le/a/b0/q/z;

    move-result-object v0

    const-string v1, "-1"

    .line 4
    invoke-static {p1, v0, v1}, Lcom/truecaller/data/entity/messaging/Participant;->d(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p1

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "participants"

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x14000000

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
