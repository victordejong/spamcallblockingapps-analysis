.class public final synthetic Le/m/a/h/a/a/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/a/o1;


# instance fields
.field public final synthetic a:Le/m/a/h/a/a/p1;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/a/p1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/f1;->a:Le/m/a/h/a/a/p1;

    iput p2, p0, Le/m/a/h/a/a/f1;->b:I

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le/m/a/h/a/a/f1;->a:Le/m/a/h/a/a/p1;

    iget v1, p0, Le/m/a/h/a/a/f1;->b:I

    .line 1
    invoke-virtual {v0, v1}, Le/m/a/h/a/a/p1;->a(I)Le/m/a/h/a/a/m1;

    move-result-object v0

    iget-object v0, v0, Le/m/a/h/a/a/m1;->c:Le/m/a/h/a/a/l1;

    const/4 v1, 0x5

    iput v1, v0, Le/m/a/h/a/a/l1;->d:I

    const/4 v0, 0x0

    return-object v0
.end method
