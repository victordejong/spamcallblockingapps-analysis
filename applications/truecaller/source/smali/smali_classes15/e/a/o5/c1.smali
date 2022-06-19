.class public Le/a/o5/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/x0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/o5/c1;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/a/o5/c1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o5/c1;->a:Landroid/content/Context;

    iget-object v1, p0, Le/a/o5/c1;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
