.class public final Le/a/c/v/h/c$a;
.super Le/a/c/v/h/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/v/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/a/c/v/h/a;


# direct methods
.method public constructor <init>(Le/a/c/v/h/a;)V
    .locals 1

    const-string v0, "concreteActionType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/c/v/h/c;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/c/v/h/c$a;->a:Le/a/c/v/h/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.truecaller.insights.reminders.action.concrete"

    return-object v0
.end method
