.class public Le/i/b/v1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/v1/a$a;
    }
.end annotation


# instance fields
.field public final a:Le/i/b/q2/h;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/v1/a;->b:Landroid/content/Context;

    .line 2
    const-class p1, Le/i/b/v1/a;

    invoke-static {p1}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object p1

    const-string v0, "LoggerFactory.getLogger(\u2026nTypeFetcher::class.java)"

    invoke-static {p1, v0}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/i/b/v1/a;->a:Le/i/b/q2/h;

    return-void
.end method


# virtual methods
.method public final a(I)Le/i/b/v1/a$a;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1
    sget-object p1, Le/i/b/v1/a$a;->d:Le/i/b/v1/a$a;

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object p1, Le/i/b/v1/a$a;->h:Le/i/b/v1/a$a;

    goto :goto_0

    .line 3
    :pswitch_1
    sget-object p1, Le/i/b/v1/a$a;->g:Le/i/b/v1/a$a;

    goto :goto_0

    .line 4
    :pswitch_2
    sget-object p1, Le/i/b/v1/a$a;->f:Le/i/b/v1/a$a;

    goto :goto_0

    .line 5
    :pswitch_3
    sget-object p1, Le/i/b/v1/a$a;->e:Le/i/b/v1/a$a;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
