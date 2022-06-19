.class public Le/a/o5/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/x0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/o5/a1;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->s()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/o5/a1;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Le/a/o5/a1;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Le/a/o5/a1;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->s()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/o5/a1;->b:Ljava/lang/String;

    .line 8
    iput-boolean p3, p0, Le/a/o5/a1;->c:Z

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o5/a1;->a:Landroid/content/Context;

    iget-object v1, p0, Le/a/o5/a1;->b:Ljava/lang/String;

    iget-boolean v2, p0, Le/a/o5/a1;->c:Z

    invoke-static {v0, v1, v2}, Le/a/e/a2;->S(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method
