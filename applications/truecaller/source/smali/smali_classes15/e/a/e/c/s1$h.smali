.class public Le/a/e/c/s1$h;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/truecaller/data/entity/Contact;

.field public final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/e/c/s1$h;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/a/e/c/s1$h;->b:Lcom/truecaller/data/entity/Contact;

    .line 4
    iput-boolean p3, p0, Le/a/e/c/s1$h;->c:Z

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Le/a/e/c/s1$h;->b:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/a/e/c/s1$h;->b:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->T()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Le/a/e/c/s1$h;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-boolean p1, p0, Le/a/e/c/s1$h;->c:Z

    invoke-static {v1, v0, v2, v3, p1}, Le/a/e/a2;->e0(Landroid/content/Context;Ljava/lang/String;JZ)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
