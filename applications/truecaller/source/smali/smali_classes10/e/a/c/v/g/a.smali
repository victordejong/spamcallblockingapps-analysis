.class public final Le/a/c/v/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Calendar;

.field public b:Le/a/c/v/g/e;

.field public c:I

.field public d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v1, "Calendar.getInstance().a\u2026currentTimeMillis()\n    }"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/c/v/g/a;->a:Ljava/util/Calendar;

    .line 5
    sget-object v0, Le/a/c/v/g/e$b;->a:Le/a/c/v/g/e$b;

    iput-object v0, p0, Le/a/c/v/g/a;->b:Le/a/c/v/g/e;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Le/a/c/v/g/a;->c:I

    .line 7
    const-class v0, Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Le/a/c/v/g/a;->d:Ljava/lang/Class;

    .line 8
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string v1, "Bundle.EMPTY"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/c/v/g/a;->e:Landroid/os/Bundle;

    return-void
.end method
