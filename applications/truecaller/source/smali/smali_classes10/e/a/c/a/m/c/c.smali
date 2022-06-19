.class public final Le/a/c/a/m/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ln3/z/q1<",
        "Lcom/truecaller/insights/models/pdo/SmsBackupMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/m/c/b;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/b;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/c;->a:Le/a/c/a/m/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ln3/z/q1;

    .line 2
    iget-object v0, p0, Le/a/c/a/m/c/c;->a:Le/a/c/a/m/c/b;

    .line 3
    iget-object v0, v0, Le/a/c/a/m/c/b;->d:Le/a/c/a/m/b/b;

    .line 4
    invoke-virtual {v0, p1}, Ln3/z/w1;->e(Ln3/z/q1;)V

    return-void
.end method
