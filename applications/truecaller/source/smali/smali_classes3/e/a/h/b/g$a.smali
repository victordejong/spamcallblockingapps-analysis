.class public final Le/a/h/b/g$a;
.super Le/a/b0/i/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/g;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Le/a/h/b/g;


# direct methods
.method public constructor <init>(Le/a/h/b/g;Ljava/lang/Long;Landroid/os/Handler;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Landroid/os/Handler;",
            "J)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/h/b/g$a;->d:Le/a/h/b/g;

    invoke-direct {p0, p3, p4, p5}, Le/a/b0/i/b;-><init>(Landroid/os/Handler;J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/g$a;->d:Le/a/h/b/g;

    invoke-virtual {v0}, Le/a/h/b/g;->c()V

    return-void
.end method
