.class public final Le/a/k0/n/b/k$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/n/b/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/n/b/k$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/k0/n/b/k$c;


# direct methods
.method public constructor <init>(Le/a/k0/n/b/k$c;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/n/b/k$c$a;->a:Le/a/k0/n/b/k$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/n/b/k$c$a;->a:Le/a/k0/n/b/k$c;

    iget-object v0, v0, Le/a/k0/n/b/k$c;->e:Le/a/k0/n/b/k;

    .line 2
    iget-object v0, v0, Le/a/k0/n/b/k;->i:Lcom/truecaller/callrecording/CallRecordingManager;

    .line 3
    invoke-interface {v0}, Lcom/truecaller/callrecording/CallRecordingManager;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
