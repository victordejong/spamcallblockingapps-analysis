.class public Le/a/f4/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/f4/f/b$d;,
        Le/a/f4/f/b$c;,
        Le/a/f4/f/b$b;
    }
.end annotation


# static fields
.field public static final a:Lx3/g0/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le/m/e/l;

    invoke-direct {v0}, Le/m/e/l;-><init>()V

    const-class v1, Lcom/truecaller/network/notification/NotificationScope;

    new-instance v2, Le/a/f4/f/b$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Le/a/f4/f/b$c;-><init>(Le/a/f4/f/b$a;)V

    .line 2
    invoke-virtual {v2}, Le/m/e/b0;->nullSafe()Le/m/e/b0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/m/e/l;->b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/m/e/l;

    const-class v1, Lcom/truecaller/network/notification/NotificationType;

    new-instance v2, Le/a/f4/f/b$d;

    invoke-direct {v2, v3}, Le/a/f4/f/b$d;-><init>(Le/a/f4/f/b$a;)V

    .line 3
    invoke-virtual {v2}, Le/m/e/b0;->nullSafe()Le/m/e/b0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/m/e/l;->b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/m/e/l;

    .line 4
    invoke-virtual {v0}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object v0

    .line 5
    new-instance v1, Lx3/g0/a/a;

    invoke-direct {v1, v0}, Lx3/g0/a/a;-><init>(Le/m/e/k;)V

    .line 6
    sput-object v1, Le/a/f4/f/b;->a:Lx3/g0/a/a;

    return-void
.end method

.method public static a(JLcom/truecaller/network/notification/NotificationScope;Ljava/lang/String;)Lx3/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/truecaller/network/notification/NotificationScope;",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Le/a/f4/f/c;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Le/a/f4/f/b$b;

    new-instance v1, Le/a/b0/b/a/b;

    invoke-direct {v1}, Le/a/b0/b/a/b;-><init>()V

    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->NOTIFICATION:Lcom/truecaller/common/network/util/KnownEndpoints;

    .line 2
    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 3
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    sget-object v2, Le/a/f4/f/b;->a:Lx3/g0/a/a;

    .line 4
    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->b(Lx3/j$a;)Le/a/b0/b/a/b;

    .line 5
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f4/f/b$b;

    .line 6
    iget-object p2, p2, Lcom/truecaller/network/notification/NotificationScope;->stringValue:Ljava/lang/String;

    invoke-interface {v0, p2, p0, p1, p3}, Le/a/f4/f/b$b;->a(Ljava/lang/String;JLjava/lang/String;)Lx3/b;

    move-result-object p0

    return-object p0
.end method
