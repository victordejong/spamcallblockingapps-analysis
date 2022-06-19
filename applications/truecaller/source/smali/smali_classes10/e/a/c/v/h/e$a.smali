.class public final Le/a/c/v/h/e$a;
.super Le/a/c/v/h/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/v/h/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:I

.field public static final c:Le/a/c/v/h/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c/v/h/e$a;

    invoke-direct {v0}, Le/a/c/v/h/e$a;-><init>()V

    sput-object v0, Le/a/c/v/h/e$a;->c:Le/a/c/v/h/e$a;

    .line 2
    const-class v0, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    sput-object v0, Le/a/c/v/h/e$a;->a:Ljava/lang/Class;

    .line 3
    sget v0, Lcom/truecaller/insights/R$id;->infoRightTitle:I

    sput v0, Le/a/c/v/h/e$a;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/c/v/h/e;-><init>(Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget v0, Le/a/c/v/h/e$a;->b:I

    return v0
.end method

.method public b()Le/a/c/v/g/e;
    .locals 1

    .line 1
    sget-object v0, Le/a/c/v/g/e$a;->a:Le/a/c/v/g/e$a;

    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/c/v/h/e$a;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "BILL"

    return-object v0
.end method
