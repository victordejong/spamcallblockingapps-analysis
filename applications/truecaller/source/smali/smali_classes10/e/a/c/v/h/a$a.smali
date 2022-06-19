.class public final Le/a/c/v/h/a$a;
.super Le/a/c/v/h/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/v/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Le/a/c/v/h/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/c/v/h/a$a;

    invoke-direct {v0}, Le/a/c/v/h/a$a;-><init>()V

    sput-object v0, Le/a/c/v/h/a$a;->a:Le/a/c/v/h/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/c/v/h/a;-><init>(Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.truecaller.insights.reminders.notifications.DISMISS"

    return-object v0
.end method
