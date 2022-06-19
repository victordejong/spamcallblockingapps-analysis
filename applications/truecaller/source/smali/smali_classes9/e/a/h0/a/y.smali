.class public final Le/a/h0/a/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Le/a/h0/a/z;

.field public final synthetic b:Le/a/h0/a/v;


# direct methods
.method public constructor <init>(Le/a/h0/a/z;Le/a/h0/a/v;)V
    .locals 0

    iput-object p1, p0, Le/a/h0/a/y;->a:Le/a/h0/a/z;

    iput-object p2, p0, Le/a/h0/a/y;->b:Le/a/h0/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/h0/a/y;->a:Le/a/h0/a/z;

    .line 2
    iget-object p1, p1, Le/a/h0/a/z;->b:Le/a/h0/a/s;

    .line 3
    iget-object v0, p0, Le/a/h0/a/y;->b:Le/a/h0/a/v;

    invoke-virtual {p1, v0, p2}, Le/a/h0/a/s;->Qj(Le/a/h0/a/v;Z)V

    return-void
.end method
